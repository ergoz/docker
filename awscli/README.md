Docker Container for awscli
===

Make sure you have docker installed, or your docker has been successfully connected to a remote docker machine.

Simply copy `aws` to your system path.
```bash
export PATH=$PATH:$HOME/bin
curl -sSL https://raw.githubusercontent.com/imwithye/docker/master/awscli/aws > aws
chmod +x aws
cp aws $HOME/bin
```

Use `aws` like you usually do.
```
aws configure
aws s3 ls s3://mybucket
```
