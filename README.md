# Terraform_series
Hello everyone , Terraform Learning Series - Day 1
Welcome to Day 1 of my Terraform Learning Series! Today, I focused on getting Terraform up and running on my Ubuntu system (using WSL) and wrote my first Terraform configuration to create an EC2 instance on AWS.

Installation Steps
Here are the commands I used to install Terraform:

Update the package list:

bash
Copy code
sudo apt-get update
Install necessary packages:

bash
Copy code
sudo apt-get install -y gnupg software-properties-common curl
Add the HashiCorp GPG key:

bash
Copy code
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
Add the official HashiCorp Linux repository:

bash
Copy code
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
Update the package list again to include the new repository:

bash
Copy code
sudo apt-get update
Install Terraform:

bash
Copy code
sudo apt-get install terraform
Verify the installation:

bash
Copy code
terraform -v
Writing Terraform Code
Here’s the configuration file (main.tf) I wrote to create an EC2 instance with an AMI ID and security keys:

hcl
Copy code
provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformExample"
  }

  key_name = "my-key-pair"
}
Applying the Configuration
To apply this configuration and create the EC2 instance, I used the following commands:

Initialize the Terraform working directory:

bash
Copy code
terraform init
Review the execution plan:

bash
Copy code
terraform plan
Apply the configuration:

bash
Copy code
terraform apply
Conclusion
Day 1 was all about getting started with Terraform, from installation to creating and applying my first configuration. I'm excited to continue this journey and explore more features and best practices of Terraform.

Stay tuned for more updates as I dive deeper into Terraform!

Connect with Me
If you have any questions or suggestions, feel free to open an issue or connect with me on LinkedIn. I’d love to hear from you.
