resource "aws_security_group" "web-server" {
    name = "web-server"
    description = "Allow incoming HTTP"

    ingress {
      cidr_blocks = [ "0.0.0.0/0" ]
      from_port = 80
      protocol = "tcp"
      to_port = 80
      description = "HTTP"
    }
    egress {
      cidr_blocks = [ "0.0.0.0/0" ]
      from_port = 0
      protocol = "-1"
      to_port = 0
    }
}