import psutil
import time

def simulate_workload():
    while True:
        # Simulate CPU and memory usage
        psutil.cpu_percent(interval=1)
        psutil.virtual_memory().percent
        time.sleep(5)

simulate_workload()
