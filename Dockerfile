FROM python:3.11.9-alpine
ARG DB_PASSWORD
ENV DB_PASSWORD=${DB_PASSWORD}
RUN echo "SECRET_KEY: $SECRET_KEY" > /secrets.txt
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8000
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]