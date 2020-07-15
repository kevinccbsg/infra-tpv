![Terraform](https://github.com/kevinccbsg/infra-tpv/workflows/Terraform/badge.svg)

# Infra-TPV

This is a repo to create TPV application infraestructure using [Terraform](https://www.terraform.io/).

This Terraform uses Google cloud platform provider. Therefore if you want to run this project you will need a [GCP project](https://cloud.google.com/resource-manager/docs/creating-managing-projects).

## Overview

There are one script you need to run on your machine before you want to deploy it. This script uses [gcloug cli](https://www.google.com/search?q=gcloud+cli&oq=gcloud+cli&aqs=chrome.0.69i59j0j69i59j0l4j69i60.1718j0j4&sourceid=chrome&ie=UTF-8) so you need to know how to [configure in your local machine](https://cloud.google.com/sdk/docs/how-to).

This script `gcloud-init.sh` creates a Storage to add your Terraform [tfstate](https://www.terraform.io/docs/state/index.html).

## Run terraform code

You can run this by adding your variables in the `terraform.tfvars` file or using Github Actions. *If you use Github Actions you need to configure your secrets*.

Then you can run:

```
terraform init
```

Create the plan

```
terraform plan
```

Apply changes

```
terraform apply
```

Check your terraform format

```
terraform fmt -check
```

Validate your configuration

```
terraform validate
```

## You also need to create a service account

This service account must have this role.

```
ROLE
roles/cloudfunctions.admin
roles/compute.networkAdmin
roles/container.admin
roles/iam.serviceAccountUser
roles/storage.admin
```

You can add a role with this command:

```
gcloud projects add-iam-policy-binding <PROJECT_ID> \
  --member "serviceAccount:<YOUR_SERVICE_ACCOUNT>" \
  --role roles/compute.networkAdmin
```
