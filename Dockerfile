FROM python:3.11-slim

# 1. UPGRADE PIP + WHEEL KWANZA = KUMUA TRIVY
RUN pip install --upgrade pip wheel==0.46.2

# 2. INSTALL FLASK MPYA = KUMUA TRIVY TENA 
RUN pip install flask==3.0.0

# 3. TENGA MTUMIAJI MPYA = KUMUA CHECKOV
RUN adduser -D appuser
USER appuser

# 4. RUN APP KAMA MTUMIAJI WA KAWAIDA, SIO ROOT
CMD ["python", "-c", "print('Secure Lab Running')]"]

