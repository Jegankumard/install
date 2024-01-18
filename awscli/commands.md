## Configure AWS
```
aws configure 
#Provide secret access key and secrey key id, default region, format
```
## Create EC2 Instance 
```
#Create keyname and sec grp id
aws ec2 run-instances --image-id ami-0c7217cdde317cfec --count 1 --instance-type t2.medium --key-name awsuseast1 --security-group-ids jegan-sec-grp --subnet-id <subnet-id>

```
## Create S3 bucket
```
aws s3api create-bucket --bucket jegankumard-ekssupermario --region us-east-1
```
