FROM python:3.10-alpine

WORKDIR /app

COPY QP-APRS-Tracker.py .
COPY qp-calls.txt .
COPY requirements.txt .
COPY boundaries/OverlayGeorgiaRev3.kml .
COPY www ./www

RUN pip install -r requirements.txt

CMD ["python3", "QP-APRS-Tracker.py", "--cli", "-a", "noam.aprs2.net", "-t", "14580", "-b", "OverlayGeorgiaRev3.kml", "-o", "1800", "-s", "qp-calls.txt"]