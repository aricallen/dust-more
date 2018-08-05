const random = require('random');

const ODD_NOTE_PROBABILITY = 24.0;
const NOTE_INC_DEC = 0.002;

class NoteEngine {
  constructor(museModel) {
    this.model = museModel;
    this.scale = [0, 4, 7, 11, 14, 18, 21]; // maj9#11 13
    this.rootOffset = 0;
    this.octaveOffset = 0;
    this.notesAtATime = 1;
    this.maxVelocityAllowed = 127;
    this.minVelocityAllowed = 0;
    this.noteOnProbability = 0.008;
    this.noteOffProbability = 0.05;
  }

  /**
   * randomly play notes
   */
  update() {
    if (random.float() < this.noteOnProbability) {
      this.playNote();
    }

    if (random.float() < this.noteOffProbability) {
      this.stopNote();
    }
  }

  reset() {
    for (let i = 0; i < this.getOnNotes().size(); i += 1) {
      this.stopNote();
    }
  }

  getModel() {
    return this.model;
  }

  getChannel() {
    return this.channel;
  }

  getScale() {
    return this.scale;
  }

  setRootOffset(offset) {
    this.rootOffset = offset;
  }

  getOctaveOffset() {
    return this.octaveOffset;
  }

  getRootOffset() {
    return this.rootOffset;
  }

  setOctaveOffset(offset) {
    this.octaveOffset = offset;
  }

  getNoteNumber() {
    const scale = this.getScale();
    const pitch = scale[random.int(0, scale.length)];
    const rootOffset = this.getRootOffset();
    const octaveOffset = this.getOctaveOffset();
    let note = pitch + rootOffset + 12 * octaveOffset;
    if (Math.random() > ODD_NOTE_PROBABILITY) {
      note += 1;
    }
    return note;
  }

  setMaxVelocityAllowed(maxVel) {
    this.maxVelocityAllowed = maxVel;
  }

  getMaxVelocityAllowed() {
    return this.maxVelocityAllowed;
  }

  setMinVelocityAllowed(minVel) {
    this.minVelocityAllowed = minVel;
  }

  setNoteOnProbability(probability) {
    this.noteOnProbability = probability;
  }

  setNoteOffProbability(probability) {
    this.noteOffProbability = probability;
  }

  getMinVelocityAllowed() {
    return this.minVelocityAllowed;
  }

  incNoteOnProbability() {
    this.noteOnProbability += NOTE_INC_DEC;
  }

  decNoteOnProbability() {
    this.noteOnProbability -= NOTE_INC_DEC;
  }

  incNoteOffProbability() {
    this.noteOnProbability += NOTE_INC_DEC;
  }

  decNoteOffProbability() {
    this.noteOnProbability -= NOTE_INC_DEC;
  }

  getNoteOnProbability() {
    return this.noteOnProbability;
  }

  getNoteOffProbability() {
    return this.noteOffProbability;
  }

  /**
   * make a reasonable velocity based on muze value
   * @return velocity
   */
  getVelocity() {
    const velocity =
      this.minVelocityAllowed +
      random.int(0, this.maxVelocityAllowed - this.minVelocityAllowed + 1);
    return velocity;
  }

  getOnNotes() {
    return this.onNotes;
  }

  updateOnNotes(noteNumber) {
    this.getOnNotes().add(noteNumber);
  }

  hasOnNotes() {
    return this.getOnNotes().size() !== 0;
  }

  getOnNoteIndex() {
    const randomIndex = random.random.int(0, this.getOnNotes().size());
    return randomIndex;
  }

  setNotesAtAtime(notesAtAtime) {
    this.notesAtATime = notesAtAtime;
  }

  getNotesAtATime() {
    return this.notesAtATime;
  }

  /**
   * get a note, send note on message, delay and note off message
   */
  playNote() {
    for (let i = 0; i <= this.getNotesAtATime(); i += 1) {
      const noteNumber = this.getNoteNumber();
      const channel = this.getChannel();
      const velocity = this.getVelocity();

      this.midiBus.sendNoteOn(channel, noteNumber, velocity); // Send a Midi noteOn
      this.updateOnNotes(noteNumber);
      console.log(
        `model: ${this.getModel().getAddressPattern()} played note - ${noteNumber} on channel - ${this.getChannel()}`
      );
    }
  }

  stopNote() {
    if (this.hasOnNotes()) {
      const channel = this.getChannel();
      const noteIndex = this.getOnNoteIndex();
      const noteNumber = this.getOnNotes().get(noteIndex);
      this.midiBus.sendNoteOff(channel, noteNumber, 0); // Send a Midi noteOff
      this.getOnNotes().remove(noteIndex);
    }
  }
}

module.exports = NoteEngine;
