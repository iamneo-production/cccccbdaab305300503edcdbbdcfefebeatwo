


provider "aws"{
    region = "ap-southeast-1"
    access_key ="AKIAURI7ZXKCI3PLKGC3"
    secret_key="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"
}

resource "aws_instance" "ec2_instance"{
    ami="ami-072f48a9ed4f1bbda"
    instance_type ="t2.micro"
    }

output "public_ip" {
  value = aws_instance.ec2_instance.public_ip
}


