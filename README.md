
gcloud builds submit --tag gcr.io/hectiq-lab-staging/streamlit-widget --project=hectiq-lab-staging

gcloud run deploy --image gcr.io/hectiq-lab-staging/streamlit-widget --platform managed --project=hectiq-lab-staging --allow-unauthenticated