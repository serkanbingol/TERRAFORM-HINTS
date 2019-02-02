resource "aws_instance" "existing_ec2"{
    ami="ami-00035f41c82244dab"
    instance_type = "t2.micro"
    vpc_security_group_ids=["sg-0d32f729fd5d96cc8","sg-6cf2c21d"]
    key_name="remoteconnection"
    subnet_id="subnet-33a6d17b"

    tags{
        Name="import_existing"
    }
}