# /usr/bin/env python
import os
import subprocess
from python_terraform import *

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKCYAN = '\033[96m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

# Parameters
REPONAME="/home/ec2-user/interactive-learning-tasks/"
REGION="us-east-1"
TASK="ec2"


def Convert(string):
    li = list(string.split("="))
    return li[1]
    
    
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
# Checks if the repo is cloned.
if os.path.isdir(REPONAME):
   print(bcolors.OKGREEN + "Repository cloned properly" + bcolors.ENDC)
   # Checks if .gitignore is created.
   if os.path.isfile(REPONAME + ".gitignore"):
      print(bcolors.OKGREEN + ".gitignore file created properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + ".gitignore file isn't created properly, please try again" + bcolors.ENDC)

   # Checks if README is created.
   if os.path.isfile(REPONAME+ "README.md"):
      print(bcolors.OKGREEN + "README file created properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + "README file isn't created properly, please try again" + bcolors.ENDC)

   # Checks if the route53 folder is created.
   if os.path.isdir(REPONAME + TASK):
      print(bcolors.OKGREEN + "route53 folder is created properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + "route53 isn't created or not named properly, please try again" + bcolors.ENDC)

   # Checks if .gitignore is created in route53 folder.
   if os.path.isfile(REPONAME + TASK + "/.gitignore"):
      print(bcolors.OKGREEN + ".gitignore  file is  created in route53 folder properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + ".gitignore file isn't created in route53 folder properly, please try again" + bcolors.ENDC)

   # Checks if .gitignore is created in route53 folder.
   if os.path.isfile(REPONAME + TASK + "/README.md"):
      print(bcolors.OKGREEN + "README file created in route53 folder properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + "README file isn't created in route53 folder properly, please try again" + bcolors.ENDC)

   # Checks if .gitignore is created in route53 folder.
   if os.path.isfile(REPONAME + TASK + "/provider.tf"):
      print(bcolors.OKGREEN + "provider.tf file created in route53 folder properly" + bcolors.ENDC)
   else: 
      print(bcolors.FAIL + "provider.tf file isn't created in route53 folder properly, please try again" + bcolors.ENDC)
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 




   #   provider.tf
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
   try:
      # Checks if provider has region info in route53 folder.
      with open(REPONAME + TASK + "/provider.tf") as file_content:
         contents = file_content.read()
         for x in contents.splitlines():
            if "region" in x:
                x = Convert(x)
                x = x.strip()
                x = x.strip('"')
                if x == REGION:
                    print(bcolors.OKGREEN + "Region is set properly" + bcolors.ENDC)
                else: 
                    print(bcolors.FAIL + "Region isn't set properly, please try again" + bcolors.ENDC)
   except FileNotFoundError:
      print(bcolors.FAIL + "provider.tf is not created"+ bcolors.ENDC)
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 




   #   key-pair.tf
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
   try:
      # Checks resource record.
      with open(REPONAME + TASK + "/" + TASK + ".tf") as file_content:
         contents = file_content.read()
         for x in contents.splitlines():
            if "public_key" in x:
               if "id_rsa.pub" in x:
                  print(bcolors.OKGREEN + "Resource Record 'blog' is set" + bcolors.ENDC)
               else: 
                  print(bcolors.FAIL + "Resource Record 'blog' is not set, please try again" + bcolors.ENDC)

            if "name" in x:
               if 'ilearning-wordpress' in x:
                  print(bcolors.OKGREEN + "Resource Record 'IP' is set" + bcolors.ENDC)
               else: 
                  print(bcolors.FAIL + "Resource Record 'IP' is not set, please try again" + bcolors.ENDC)

   except FileNotFoundError:
      print(bcolors.FAIL + "" + TASK + ".tf is not created" + bcolors.ENDC)
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 




   #   output.tf
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 
   try: 
      # Checks resource record.
      with open(REPONAME + TASK + "/output.tf") as file_content:
         contents = file_content.read()
         for x in contents.splitlines():
            if "aws_key_pair.ilearning-wordpress.key_name" in x:
               if 'key_name' in x:
                  print(bcolors.OKGREEN + "Output Zone ID is set" + bcolors.ENDC)
               else: 
                  print(bcolors.FAIL + "Output Zone ID is not set" + bcolors.ENDC)


            if "aws_key_pair.ilearning-wordpress.id" in x:
               if 'id' in x:
                  print(bcolors.OKGREEN + "Output Zone Name is set" + bcolors.ENDC)
               else: 
                  print(bcolors.FAIL + "Output Zone Name is not set" + bcolors.ENDC)

   except FileNotFoundError:
      print(bcolors.FAIL + "output.tf isn't created in route53 folder, please try again" + bcolors.ENDC)
   # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # 

else: 
   print(bcolors.FAIL + "Repository isn't cloned properly, please clone it\n        1. cd\n        2. git clone YOUR_REPO" 
   + bcolors.ENDC)



#  Running Terraform command
print(bcolors.OKGREEN + "Running Plan, it takes few seconds" + bcolors.ENDC)
result = os.popen('python3 -m venv env && source env/bin/activate && pip3 install python_terraform && cd %s/%s && terraform fmt && terraform init && terraform plan' % (REPONAME, TASK))
output = result.readlines()
for x in output:
   OUTPUT = (x.strip())
   if "region" in OUTPUT:
      print(Convert(OUTPUT.strip()))
   if "ami" in OUTPUT:
      print(Convert(OUTPUT.strip()))
   if "zone_id" in OUTPUT:
      print(Convert(OUTPUT.strip()))
   if "instance_type" in OUTPUT:
      print(Convert(OUTPUT.strip()))


os.system("rm -rf env")