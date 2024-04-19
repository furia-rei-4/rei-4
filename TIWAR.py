import subprocess
import time

subprocess.Popen(["robot", "-d", "logs", "-t", "Rei", "./Clients/TIWAR1.robot"])
time.sleep(540)
