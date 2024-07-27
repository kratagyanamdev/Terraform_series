provider "aws" {
region = "us-west-2" # Specify your desired region \
}

resource "aws_instance" "example" {
ami = "ami-035858955859gfy8" # specify your desired AMI ID
instance_type = "t2.micro"
 tags = { 
Name = TerrformExample key_name = "key-psir" # add your actual pair name
}
