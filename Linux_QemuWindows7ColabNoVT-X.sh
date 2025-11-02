#@title **Setup ngrok**


#@markdown **Please enter your ngrok token here before running**
#@markdown ****
#@markdown It doesn't take too long
import os
YOURTOKEN = "" #@param {type:"string"}

if YOURTOKEN == "34soqpPB3Nm7WeS5EnLInGNPUFC_2Vm3k1kAddKwmfQYPFZ2D" :
            print("Please enter your token")
elif len(str(YOURTOKEN)) < 49:
   print("Your ngrok token is invalid. Please check back")
elif len(str(YOURTOKEN)) > 49:
   print("Your ngrok token is invalid. Please check back")
else:
  print("Installing ngrok...")
  os.system("wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip")
  os.system("unzip -o ngrok-stable-linux-amd64.zip > /dev/null 2>&1")
  os.system("rm -rf ngrok-stable-linux-amd64.zip")
  print("Setting up...")
  os.system(f"./ngrok authtoken {YOURTOKEN}")
  os.system("nohup ./ngrok tcp --region ap 5900 &>/dev/null &")
  print("Done")
