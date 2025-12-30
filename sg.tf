# Security group without Dynamic Block


resource "aws_security_group" "ec2-sg" {
    name = "lct-sg"
    dynamic "ingress" {
        for_each = [22,80]
        iterator = port
        content {
          description = "TLS from VPC"
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
        }
      
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "lct-sg"
    }
  
}