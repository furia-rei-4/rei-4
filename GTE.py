import subprocess
import time

subprocess.Popen(["robot", "-d", "logs", "-t", "Rei", "./Clients/GTE1.robot"])
time.sleep(540)
