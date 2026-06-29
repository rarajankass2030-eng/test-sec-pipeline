FROM python:3.22-slim

RUN pip install flask==3.0.0

RUN adduser -D appuser
USER appuser

CMD ["python", "-c", "pr
