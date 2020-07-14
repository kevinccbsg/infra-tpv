
sed -i -e "s/PROJECT_ID/$PROJECT_ID/g" terraform.tfvars
sed -i -e "s/PROJECT_ID/$PROJECT_ID/g" main.tf
sed -i -e "s/PROJECT_REGION/$PROJECT_REGION/g" terraform.tfvars

## It is creating this file so I added to remove after
#it is created
rm -f terraform.tfvars-e

## Prepare credential file

echo $PROJECT_CREDENTIAL | base64 --decode > credential.json
