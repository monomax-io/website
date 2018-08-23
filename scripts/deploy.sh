# First, git push
echo '### Pushing git'
git push

echo '### Building'
hugo

# Assuming aws cli is configured with credentials (`sudo aws configure`)
echo '### Uploading to S3 bucket'
sudo aws s3 sync --acl=public-read public s3://monomax.sh
