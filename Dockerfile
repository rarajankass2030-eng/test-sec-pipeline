FROM python:3.11-slim
USER root

# Hii `python 3.7` ni ya zamani sana ina CVEs 200+ - Trivy atakama
RUN pip install flask==1.0.2

# Tunatumia `root` = Checkov atakama
CMD ["python", "-c", "print('Vulnerable Lab Running')"]

RUN adduser -D appuser
USER appuser
