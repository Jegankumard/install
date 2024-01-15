## AWS CLI(Linux):
URL: https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
which aws
ls -l /usr/local/bin/aws
aws --version
```
### Download the installation file
```
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
```
### Unzip the installer
```
unzip awscliv2.zip
```
### Run the install program
```
sudo ./aws/install
```
--Without sudo
```
./aws/install -i /usr/local/aws-cli -b /usr/local/bin
```
### Verify path and version
```
which aws
ls -l /usr/local/bin/aws
aws --version
```