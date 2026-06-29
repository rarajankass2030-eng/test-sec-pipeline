FROM python:3.12-alpine

RUN pip install --no-cache-dir flask==3.0.0

RUN adduser -D appuser
USER appuser

CMD ["python", "-c", "print('Secure Lab Running')]"]
