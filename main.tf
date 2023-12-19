provider "aws" {
    region = "us-east-1" #Região desejada
}

resource "aws_instance" "web_server" {
    ami           = "ami-0c55b159cbfafe1f0" #AMI do Amazon Linux 2 (pode substituir de acordo com a necessidade)
    instance_type = "t2.micro" #Tipo da máquina, neste caso uma de baixo custo/performance (também pode ser modificada de acordo com a necessidade)
}

tags = {
    Name = "web-server-instance"
}

#os campos abaixo são de uso pessoal, portanto deve-se colocar as credenciais pessoais  do usuário
key_name       = "sua_chave_ssh"    #Substituir pelo nome da chave SSH
security_group = ["Default"]        #Substituir pelo ID do grupo de segurança desejado
