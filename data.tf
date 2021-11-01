data "aws_ami" "linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values =["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

data "aws_ami" "window" {
  most_recent = true
  #owners      = ["801119661308"] // Working with Owner ID
  owners = [ "amazon" ] // "ImageOwnerAlias": "amazon", // Working with alias owner
  provider = aws.Canada
  filter {
    name   = "name"
    values = [ "Windows_Server-2019-English-Full-Base-*" ]

}
}
