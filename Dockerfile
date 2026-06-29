FROM alpine:3.22

# Update packages
RUN apk update && apk upgrade && \
    adduser -D -u 10001 appuser

WORKDIR /app

# Copy application
COPY . .

# Use non-root user
USER appuser

CMD ["sh"]
