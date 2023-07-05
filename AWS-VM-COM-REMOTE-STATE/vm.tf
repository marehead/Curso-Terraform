resource "aws_key_pair" "key" {
    key_name = "aws-key"
    public_key file("./aws-key.pub")
}

resource "aws_instance" "foo" {
    ami = "ami-005e54dee72cc1d00" #us-west-2
    instance_type = "t2.micro"    
}