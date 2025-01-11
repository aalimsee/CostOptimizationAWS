import os
import subprocess

#    subprocess.run(["stress", "--cpu", "2", "--timeout", "300"])  # Simulate CPU load
#    subprocess.run(["fio", "--name=test", "--rw=readwrite", "--bs=4k", "--size=500M", "--time_based", "--runtime=300", "--ioengine=libaio"])  # Simulate IO load

def simulate_workload():
    print("Starting workload simulation...")

    print("Simulating CPU and Memory Workload...")
    os.system("stress-ng --cpu 2 --vm 1 --vm-bytes 64M --timeout 60s")
    
    print("Simulating Disk I/O Workload...")
    os.system("fio --name=read_write_test --rw=readwrite --bs=4k --size=1G --numjobs=2 --runtime=60")

    print("Simulation complete!")

if __name__ == "__main__":
    simulate_workload()
