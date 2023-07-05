treinamento terraform: 16/06

criar pasta no WSL: AWS_AZURE_REMOTE_STATE_TWO
code . 
ls
cd
sudo cp /home/fabiosilva/AWS_BUCKET/main.tf /home/fabiosilva/AWS_AZURE_REMOTE_STATE_TWO
(comando permite copiar arquivos de origem para destino)
[sudo] password for fabiosilva:
cd AWS_AZURE_REMOTE_STATE_TWO/
ls 


criar o AWS-VPC-TWO 
main.tf
terraform {
required_version = ">=1.0.0"

required_providers {
   aws = {
source = "hashicorp/"
version = "3.73.0"
}
}

backend "s3" {
bucket ="marina-remote-state"
key    ="aws-vpc-two/terraform.tf"
region = "us-east-1"
}

provider "aws" {
	region = "us-east-1"
	
default_tags {
	tags = {
		owner = 
		
		
	network.tf
		
	resource "aws_vpc" "virtualredeprivada" {
	cidr_block = "10.0.0.0/16"
	
	resource "aws_vpc" "virtualredeprivada" {
	cidr_block = "10.0.0.0/24"
	 }
	}
	resource "aws_subnet" "subrede" {
	vpc_id = aws_vpc.virtaulredeprivada.id
	
	tags = {
		Name = "curso-subnet-terraform"
	 }
	}
	
	resource "aws_internet_gateway" "internet_gateway" {
	vpc_id = aws_vpc.virtaulredeprivada.id
	
	tags = {
		Name = "curso-internet-gateway"
	 }
	}

resource "aws_subnet" "subrede" {
vpc_id = aws_vpc.virtualredeprivada.id

route = {
cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.internet_gateway.id
 }

tags = {
	Name = "curso-route-table-terraform"
 }
}

resource "aws_route_table_association" "rta" {	
	subnet_id = aws_subnet.foo.id
	route_table_id = aws_route_table.bar.id
}