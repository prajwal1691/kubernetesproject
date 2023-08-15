resource "aws_instance" "ec2-tf" {
  ami                    = "ami-0f5ee92e2d63afc18"
  instance_type          = "t2.micro"
  key_name               = "Devops_Realtime"
  vpc_security_group_ids = [aws_security_group.demo-sg.id]
  
  tags = {
    Name = "Jenkins-Server"
  }
}