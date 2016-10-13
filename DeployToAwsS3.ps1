## Pre-Req: 
# aws configure
# with access and security keys
$awsprofile = "lundsgard"

$bucketname = "www.continuousdelivery.eu"

# Create bucket
#aws s3 mb "s3://$bucketname"

# Empty bucket first
aws s3 rm "s3://$bucketname/" --recursive --profile $awsprofile

# Create and Deploy package to s3
aws s3 cp '.' "s3://$bucketname/" --recursive --exclude ".git/*" --exclude "*.ps1" --exclude ".idea/*" --exclude "*.md" --profile $awsprofile
