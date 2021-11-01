resource "aws_instance" "vm" {
  count = 3
  #ami           = "ami-041d6256ed0f2061c"
  ami           = data.aws_ami.linux.id
  instance_type = "t2.micro"

  tags = {
    "Name" = "terraform0${count.index}"
  }
}

resource "aws_instance" "vm1" {
  #ami           = "ami-0a70476e631caa6d3"
  ami           = data.aws_ami.window.id
  instance_type = "t2.medium"
  provider      = aws.Canada

  tags = {
    "Name" = "terraform01"
  }
}
