FROM python:3.11.9-alpine
ARG DB_PASSWORD
ENV DB_PASSWORD=${DB_PASSWORD}
COPY . .
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]