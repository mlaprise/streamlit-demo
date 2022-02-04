FROM python:3.7

ENV PYTHONUNBUFFERED True

EXPOSE 8080

# Copy local files to container
ENV APP_PATH /app
WORKDIR $APP_PATH
COPY . ./

RUN pip install -r requirements.txt

CMD streamlit run --server.port 8080 --server.enableCORS false --server.enableXsrfProtection false streamlit-app.py