const random = require('random');
const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');

const ODD_NOTE_PROBABILITY = 24.0;
const NOTE_INC_DEC = 0.002;

class NoteEngine extends Engine {
  constructor({
    museEngine,
    address,
    client,
    octaveOffset = 0,
    noteOnProbability,
    noteOffProbability,
    maxVelocity = 127,
    notesAtATime = 1,
  }) {
    super();
    this.museEngine = museEngine;
    this.address = address;
    this.oscClient = client;
    this.octaveOffset = octaveOffset;
    this.noteOnProbability = noteOnProbability;
    this.noteOffProbability = noteOffProbability;
    this.maxVelocity = maxVelocity;
    this.notesAtATime = notesAtATime;
    this.octaveOffset = octaveOffset;

    // defaults
    this.scale = [0, 4, 7, 11, 14, 18, 21]; // maj9#11 13
    this.rootOffset = 0;
    this.maxVelocityAllowed = 127;
    this.minVelocityAllowed = 0;
    this.noteOnProbability = 0.008;
    this.noteOffProbability = 0.05;

    this.onNotes = [];
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
    for (let i = 0; i < this.getOnNotes().length; i += 1) {
      this.stopNote();
    }
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
    const pitch = scale[random.int(0, scale.length - 1)];
    const rootOffset = this.getRootOffset();
    const octaveOffset = this.getOctaveOffset();
    let note = pitch + rootOffset + 12 * octaveOffset;
    if (Math.random() > ODD_NOTE_PROBABILITY) {
      note += 1;
      console.log('odd note');
    }
    return note;
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
    this.getOnNotes().push(noteNumber);
  }

  hasOnNotes() {
    return this.getOnNotes().length !== 0;
  }

  getOnNoteIndex() {
    const randomIndex = random.int(0, this.getOnNotes().length);
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
      const velocity = this.getVelocity();

      const data = [noteNumber, velocity];
      const maxMessage = new MaxMessage({ address: this.address, data });
      this.oscClient.send(maxMessage); // Send a Midi noteOn
      this.updateOnNotes(noteNumber);
      const lines = [
        `address: ${this.getAddress()}`,
        `note: ${noteNumber}`,
        `velocity: ${velocity}`,
      ];
      console.log(lines.join('\n'));
    }
  }

  stopNote() {
    if (this.hasOnNotes()) {
      const noteIndex = this.getOnNoteIndex();
      const noteNumber = this.getOnNotes()[noteIndex];
      const maxMessage = new MaxMessage({ address: this.getAddress(), data: [noteNumber] });
      this.oscClient.send(maxMessage); // Send a Midi noteOff
      this.getOnNotes().filter((_, i) => i !== noteIndex);
    }
  }
}

module.exports = NoteEngine;
