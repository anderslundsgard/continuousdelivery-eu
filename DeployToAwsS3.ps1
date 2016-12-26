## Pre-Req: 
# aws configure
# with access and security keys
$awsprofile = "lundsgard"

$bucketname = "www.continuousdelivery.eu"

# Create bucket
#aws s3 mb "s3://$bucketname"

# Sync package to s3
aws s3 sync '.' "s3://$bucketname/" --exclude ".git/*" --exclude "*.ps1" --exclude ".idea/*" --exclude "*.md" --profile $awsprofile
