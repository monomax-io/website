# First, git push
echo '### Pushing git'
git push

echo '### Building'
hugo

# Assuming aws cli is configured with credentials (`aws configure`)
echo '### Uploading to S3 bucket'
aws s3 sync --acl=public-read public s3://monomax.sh --profile monomax
