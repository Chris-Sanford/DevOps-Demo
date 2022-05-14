#You must run the following command to import a pre-existing EIP! This helps in maintaining the same public IP address across newly-provisioned instances.

#terraform import aws_eip.devops eipalloc-052a4ae8dbc8e6a5e

#Add remote exec code to automatically install ansible, pull from git, and configure itself:
#https://www.terraform.io/language/resources/provisioners/remote-exec
#All things needed to run can be found in DevOps_AWS.txt

terraform { #Declares the beginning the Terraform file
  required_providers { #Defines the required provider(s) necessary to provision the resources
    aws = {
      source  = "hashicorp/aws" #Hashicorp's official AWS provider
      version = "~> 3.27" #Defines specific version to ensure consistency as new versions release
    }
  }

  required_version = ">= 0.14.9" #What exactly does this do?
}

provider "aws" { #Defines the provider and the required attributes
  profile = "default"
  region  = "us-east-1"
}

resource "aws_eip_association" "eip_assoc" { #Associates the previously-imported EIP to the new instance
  instance_id   = aws_instance.devops.id #Dynamically maps to new instance
  allocation_id = aws_eip.devops.id #Maps to the imported EIP
}

resource "aws_instance" "devops" { #Defines/creates the EC2 instance
  ami           = "ami-026a2c62c35267e08" #Selects a specified Ubuntu AWS AMI Image
  instance_type = "t2.micro" #Defines the instance type
  key_name = "aws-tf-keypair" #Selects the pre-existing keypair we created to ensure we can SSH in

  tags = {
    Name = "DevOps" #Tags/Names the instance to help identify it in the EC2 console
  }
}

resource "aws_eip" "devops" { #Creates the EIP resource into which the pre-existing EIP is imported
  vpc = true #It is required to identify that this EIP is from a VPC
}