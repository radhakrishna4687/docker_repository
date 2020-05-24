#!/usr/bin/python

#!/usr/bin/python
import os
import sys
import importlib
import subprocess

#for path in sys.path:
    #print(path)

cmd = "docker ps -a"
cmd_2 = "docker ps "
print("thecommand to listout stop containers {" "} and list out the running containers{" "}".format(cmd,cmd_2))
return_value=os.system(str(input(" Please enter the commands: ")))
cmd_3 = "cat docker.txt"
print(cmd_3)
