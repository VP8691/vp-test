resource "aws_instance" "ec2" {
    

    ami = "ami-08d7aabbb50c2c24e"
    instance_type = "t2.micro"
    tags ={
        Name = "test"
        Team = "lctdec"
    }

}