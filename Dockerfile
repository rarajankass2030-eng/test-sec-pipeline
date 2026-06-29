FROM python:3.11-slim

# UPGRADE WOTE 3 KWA PAMOJA = KUMUA TRIVY 100%
RUN pip install --upgrade pip setuptools==70.0.0 wheel==0.46.2

# INSTALL FLASK MPYA
RUN pip install flask==3.0.0

# TENGA MTUMIAJI MPYA = KUMUA CHECKOV
RUN adduser -D appuser
USER appuser

CMD ["python", "-c", "print('Secure Lab Running')]"]

