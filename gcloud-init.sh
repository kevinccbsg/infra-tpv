
PROJECT_ID=$(gcloud config get-value project)

# Create Storage with gsutil
# More info here: https://cloud.google.com/storage/docs/gsutil
gsutil mb gs://${PROJECT_ID}-tfstate


# Adding versioning
# Enabling Object Versioning increases storage costs, which you can mitigate
# by configuring Object Lifecycle Management to delete old state versions.
gsutil versioning set on gs://${PROJECT_ID}-tfstate

