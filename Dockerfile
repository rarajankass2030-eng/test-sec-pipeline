FROM python:3.12-slim

RUN python -m pip install --no-cache-dir --upgrade pip
RUN python -m pip install --no-cache-dir wheel==0.46.2 flask==3.1.1

RUN adduser --disabled-password --gecos "" appuser
USER appuser

CMD ["python", "-c", "print('Secure Lab Running')"]

