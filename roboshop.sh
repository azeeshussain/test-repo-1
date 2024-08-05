#!/bin/bash
AMI=ami-0b4f379183e5706b9
SG_ID=sg-083a2981d9c8f6762
instances = ("mangodb" "redis" "mysql "rabbitmq" "catalogue" "user" "cart" "shipping" "payment" "dispatch" "web")

       instances_type="t3.small"
    else
         instances_type="t2.micro"
    fi

    aws ec2 run-instances --image-id  ami-0b4f379183e5706b9 --instances-type $instances_type --security-group-ids sg-083a2981d9c8f6762
done   for i in "${instances[@]}"
do 
    echo "instance is $i"
    if [ $i == "mangodb" ] || [ $i == "mysql" ] || [ $i == "shipping"]
    then 
   

