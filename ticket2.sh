#!/bin/bash

 #This line makes my answers green
green=`tput setaf 2`
 #This line makes my answers red
red=`tput setaf 1`
 ##This line resets the color
reset=`tput sgr0`

# Checks if the repo is cloned
if [ -d  "/home/ec2-user/interactive-learning-tasks" ];
then 
        echo "${green}The repository cloned properly${reset}"
else 
        echo "${red}The repository is not cloned properly${reset}"
fi

# Checks if .gitignore is created
if [ -f  "/home/ec2-user/interactive-learning-tasks/.gitignore" ];
then 
        echo "${green}The .gitignore file created properly${reset}"
else 
        echo "${red}The .gitignore file is not created properly${reset}"
fi

# Checks if README is created
if [ -f  "/home/ec2-user/interactive-learning-tasks/README.md" ];
then 
        echo "${green}The README file created properly${reset}"
else 
        echo "${red}The README file is not created properly${reset}"
fi
###############################################################################################

# Checks if the key-pair folder  is created
if [ -d  "/home/ec2-user/interactive-learning-tasks/key-pair" ];
then 
        echo "${green}The key-pair folder is created properly${reset}"
else 
        echo "${red}The key-pair is not created properly or not named properly${reset}"
fi


# Checks if .gitignore is created in key-pair folder
if [ -f  "/home/ec2-user/interactive-learning-tasks/key-pair/.gitignore" ];
then 
        echo "${green}The .gitignore file is  created in key-pair folder${reset}"
else 
        echo "${red}The .gitignore file is not created in key-pair folder${reset}"
fi

# Checks if README is created in key-pair folder
if [ -f  "/home/ec2-user/interactive-learning-tasks/key-pair/README.md" ];
then 
        echo "${green}The README file created in key-pair folder${reset}"
else 
        echo "${red}The README file is not created in key-pair folder${reset}"
fi


# Checks if provider is created in key-pair folder
if [ -f  "/home/ec2-user/interactive-learning-tasks/key-pair/provider.tf" ];
then 
        echo "${green}The provider.tf file created in key-pair folder${reset}"
else 
        echo "${red}The provider.tf file is not created in key-pair folder${reset}"
fi


# Checks if provider has region info in key-pair folder
REGION_INFO=$(grep region /home/ec2-user/interactive-learning-tasks/key-pair/provider.tf | awk '{print $3}' | sed "s/\"//g")

if [ $REGION_INFO == "us-east-2" ];
then 
        echo "${green}The region is set properly${reset}"
else 
        echo "${red}The region is not set properly${reset}"
fi


# Checks if key-pair file is created
if [ -f "/home/ec2-user/interactive-learning-tasks/key-pair/key-pair.tf" ];
then 
        echo "${green}The key-pair.tf is created ${reset}"
else 
        echo "${red}The key-pair.tf is not created${reset}"
fi

##########################################################################################################################################
# Checks if output.tf file is created
if [ -f "/home/ec2-user/interactive-learning-tasks/key-pair/output.tf" ];
then 
        echo "${green}The output.tf is created in key-pair ${reset}"
else 
        echo "${red}The output.tf is not created in key-pair ${reset}"
fi


# Checks output.tf file for key_name
KEY_NAME=$(grep aws_key_pair.ilearning-wordpress.key_name /home/ec2-user/interactive-learning-tasks/key-pair/output.tf | awk '{print $3}' | sed "s/\"//g")
if [ $KEY_NAME == "aws_key_pair.ilearning-wordpress.key_name" ];
then 
    echo "${green}The key name will be printed out${reset}"
else 
    echo "${red}he key name will not be printed out${reset}"
fi


# Checks output.tf file for key id
KEY_ID=$(grep aws_key_pair.ilearning-wordpress.id /home/ec2-user/interactive-learning-tasks/key-pair/output.tf | awk '{print $3}' | sed "s/\"//g")
if [ $KEY_ID == "aws_key_pair.ilearning-wordpress.id" ];
then 
    echo "${green}The key id will be printed out${reset}"
else 
    echo "${red}he key id will not be printed out${reset}"
fi


REGION_OUTPUT=$(grep region -A 1  /home/ec2-user/interactive-learning-tasks/key-pair/output.tf | awk '{print $3}' | sed "s/\"//g" | grep us-east-1)
if [ $REGION_OUTPUT == "us-east-1" ];
then 
    echo "${green}The key region will be printed out${reset}"
else 
    echo "${red}he key region will not be printed out${reset}"
fi

##########################################################################################################################################
# Checks key-pair.tf file for key_name
KEY_NAME=$(grep name /home/ec2-user/interactive-learning-tasks/key-pair/key-pair.tf | awk '{print $3}' | sed "s/\"//g")
if [ $KEY_NAME == "ilearning-wordpress" ];
then 
    echo "${green}The key name is correct${reset}"
else 
    echo "${red}The key name is not correct${reset}"
fi

# Checks key-pair.tf file for public_key
PUBLIC_KEY_LOCATION=$(grep public_key /home/ec2-user/interactive-learning-tasks/key-pair/key-pair.tf | awk '{print $3}' | sed "s/\"//g")
if [[ $PUBLIC_KEY_LOCATION == file* ]];
then 
    echo "${green}The key is given with "file" function ${reset}"
else 
    echo "${red}The key is not given with "file" function ${reset}"
fi