const random = require('random');
const Engine = require('./engine.js');
const MaxMessage = require('./models/max-message.js');

const ODD_NOTE_PROBABILITY = 0.0002;

class NoteEngine extends Engine {
  constructor({
    museEngine,
    address,
    client,
    octaveOffset = 0,
    noteOnProbability,
    noteOffProbability,
    maxVelocity = 127,
    maxDuration = 5000,
    minVelocity = 0,
    minDuration = 240,
    notesAtATime = 1,
  }) {
    super();
    this.museEngine = museEngine;
    this.address = address;
    this.oscClient = client;
    this.octaveOffset = octaveOffset;
    this.noteOnProbability = noteOnProbability;
    this.noteOffProbability = noteOffProbability;
    this.minVelocity = minVelocity;
    this.maxVelocity = maxVelocity;
    this.maxDuration = maxDuration;
    this.minDuration = minDuration;
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
  }

  reset() {
    // send fadeout/flush message
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
    const normalized = this.museEngine.getNormalized();
    const velocity = random.int(this.minVelocity, this.maxVelocity);
    return Math.min(velocity * normalized, this.maxVelocity);
  }

  /**
   * make a reasonable duration
   * @return velocity
   */
  getDuration() {
    const normalized = this.museEngine.getNormalized();
    const duration = random.int(this.minDuration, this.maxDuration);
    return Math.max(duration * normalized, this.minDuration);
  }

  getOnNotes() {
    return this.onNotes;
  }

  removeOnNote(toRemove) {
    this.onNotes = this.getOnNotes().filter((note) => note !== toRemove);
  }

  addOnNote(noteNumber, duration) {
    this.getOnNotes().push(noteNumber);
    setTimeout(() => {
      this.removeOnNote(noteNumber);
    }, duration);
  }

  hasOnNotes() {
    return this.getOnNotes().length !== 0;
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
      const duration = this.getDuration();

      const data = [noteNumber, velocity, duration];
      const maxMessage = new MaxMessage({ address: this.address, data });
      this.oscClient.send(maxMessage); // Send a Midi noteOn
      this.addOnNote(noteNumber, duration);
      const lines = [
        `address: ${this.getAddress()}`,
        `note: ${noteNumber}`,
        `velocity: ${velocity}`,
        `duration: ${duration}`,
      ];
      // console.log(lines.join('\n'));
    }
  }
}

module.exports = NoteEngine;
