# DustMore #

## Running

* connect muse headset via bluetooth by turning it on (it should already be paired)
* if needing to re-pair, turn off headset and then on holding button for five seconds
  - you should see the light blinking
  - it may show as `Not Connected` in the bluetooth preferences, until the muse-io program is running
* `cd ~/Desktop/dust-more && sh scripts/startup.sh`
* make sure logic tracks are all in record mode
  - instrument tracks will have the `R` highlighted red
  - Room Mic track will have both the `I` and `R` highlighted 
* make sure `Preferences > Audio > Devices > Output Devices` is the `FastTrackPro`
* make sure `Preferences > Audio > Devices > Output Devices` is the `iTalk-02`
* make sure control surfaces are for "from Max 1" (option + shift + k)
* in Logic, de-mix midi channels via `Preferences > Recording > Recording Project Settings > "Auto demix by channel..."`

---

## Debugging

Run each system in separate shell (steps can be seen in `scripts/startup.sh`)
* `cd ~/Desktop/dust-more`
* `npm run stream`
* `npm run start`
* `ssh pi@10.0.1.5 && python3 /home/pi/run/srv3.py --leds 250 --ip 10.0.1.5 --port 9001`
* `open router/dust_more.maxpat`
* `open sound-engine sound-engine.logicx`

---

## MindWave (lighting script) ##

OSC Addresses the light script is listening for

`/sean/alpha 0.0`
`/sean/beta 0.0`
`/sean/gamma 0.0`
`/sean/alphaavg 0.0`
`/sean/betaavg 0.0`

**setup mac network manually**

* set IP to 10.0.1.6 (slightly different than pi)
* set Subnet Mask to 255.255.0.0

```sh
ssh pi@10.0.1.5 # password is pi
cat /etc/rc.local # startup script

~/pi/run/srv3.py.mindwerk # the one I want

# copy script to run on startup
cp srv3.py.mindwerk srv3.py

# manual run
python3 /home/pi/run/srv3.py --leds 250 --ip 10.0.1.5 --port 9001

# ssh without password (copy ssh key from computer to pi)
ssh-copy-id pi@10.0.1.5
```

## MuseIO ##

* Install and setup the `museresearchtools` (contains muse-io and muse-player) according to [instructions here](http://developer.choosemuse.com/tools/mac-tools)
* if using something different than `bash`, need to add the following lines to your profile:
  - `export PATH="$PATH:/Applications/Muse"`
  - `export DYLD_FALLBACK_LIBRARY_PATH="$DYLD_FALLBACK_LIBRARY_PATH:/Applications/Muse"`
  - if the above still doesn't load the library correctly try the following

```sh
cd /Applications/Muse
install_name_tool -change /Users/narek/Dev/3rdparty/lsl/build/LSL/liblsl/src/liblsl.dylib /Applications/Muse/liblsl.dylib muse-io
```

* pair headset with computer via bluetooth (turn off headset and then turn on holding button for 5 seconds until all 5 lights blink in unison)
* after it is paired, it will show as `disconnected` until a program starts streaming to it
* run `muse-io` like below to stream OSC

`muse-io --device Muse-98A9`

sending from device to some port for other program
`muse-io --device Muse-98A9 --osc osc.udp://localhost:9000`

reading file over TCP
`muse-player -f muselab_recording.muse -s osc.tcp://127.0.0.1:9000`

read file to mindwave (lighting script)
`muse-player -f muselab_recording.muse -s osc.udp://10.0.1.5:9000`

read file to local Max (udp instead of tcp)
`muse-player -f muselab_recording.muse -s osc.udp://127.0.0.1:9001`