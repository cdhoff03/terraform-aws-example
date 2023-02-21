resource "aws_instance" "web-server" {
  ami           = "ami-0dfcb1ef8550277af"
  instance_type = "t2.micro"
    count = 2
    security_groups = [aws_security_group.web-server.name]

    user_data = <<EOF
        #!/bin/bash
        sudo su
        yum update -y
        yum install httpd.x86_64 -y
        systemctl start httpd.service
        systemctl enable httpd.service
        echo "Hello World from $(hostname -f)" > /var/www/html/index.html
    EOF

  tags = {
    Name = "cdhoff-web-server-${count.index}"
  }
}