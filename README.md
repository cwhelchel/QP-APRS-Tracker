QP-APRS-Tracker (US-GA Edition)
------------------

Source has been modified to work for Georgia (various hard coded lat,lon values, APRS comment filter text, and APRS position geofilter).

```
Usage: QP-APRS-Tracker.py [options]

Options:
  -h, --help            show this help message and exit
  -c, --cli             Run in command line mode
  -a APRS, --aprs=APRS  APRS hostname/IP address
  -t TCP, --tcp=TCP     APRS TCP port number
  -r RUNFILE, --run=RUNFILE
                        APRS data file for replay processing
  -b BNDFILE, --boundary=BNDFILE
                        Geographic boundary kml data file
  -s CALLFILE, --calls=CALLFILE
                        QP calls data file
  -o AGE_OUT, --ageout=AGE_OUT
                        Age timeout for QP calls
```

Example Usage
--------------

```shell
$ python ./QP-APRS-Tracker.py --cli -a noam.aprs2.net -t 14580 -b boundaries/OverlayVirginiaRev4.kml -o 1800 -s vaqp-calls.txt
```

Docker
-------------

A docker image build is available. See `Dockerfile`. It copies only the files needed for GAQP and executes on startup with the above command line args (boundary file arg is different).

A docker-compose is given which uses the image from the Dockerfile as well as an nginx image to spin up a working webserver that exposes port 7373.

The images used in the compose file are `python:3.10-alpine` and `nginx:stable-alpine` and I have this currently running on an Inovato. It should run on RPI and other flavors by changing the images as needed.
