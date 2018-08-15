open router/dust_more.maxpat
open sound-engine/sound-engine.logicx
npm run stream
npm run start

# ssh into pi and start script
SSHHOST='pi@10.0.1.5'

# entry point is /public_html/curiousrhythms/
ssh $SSHHOST <<END_SCRIPT
python3 /home/pi/run/srv3.py --leds 250 --ip 10.0.1.5 --port 9001
END_SCRIPT
