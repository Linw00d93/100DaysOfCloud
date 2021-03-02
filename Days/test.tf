provider "ubuntu" {
  user                 = "ubuntu"
  password             = "elkStackTest.pem"
  allow_unverified_ssl = true
}
resource "aws_instance" "website"{
  ami           = "ami-03d315ad33b9d49c4"
  instance_type = "t2.micro"
  subnet_id = "subnet-01ca3a33d560020a0"
  key_name = "elkStackTest"
  associate_public_ip_address = "true"
  
  tags = {
    Name = "terraform-example"
  }
  provisioner "remote-exec" {
    inline = [
      "apt-get install nginx -y",
      "touch index.html",
      "echo <head> <title>My Website Home Page</title></head> <body> <h1>Welcome to my website</h1> <p>Now hosted on Amazon S3!</p> </body> </html> >> index.html",
      "mv index.html /var/www/"
      "reboot"
    ]
  }
}
