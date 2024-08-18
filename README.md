QP-APRS-Tracker (US-GA Edition)
------------------

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

Example Usage: 

```shell
$ python ./QP-APRS-Tracker.py --cli -a noam.aprs2.net -t 14580 -b boundaries/OverlayVirginiaRev4.kml -o 1800 -s vaqp-calls.txt
```

