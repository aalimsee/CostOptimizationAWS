import os
import subprocess

def run_simulations():
    print("Starting workload simulation...")
    subprocess.run(["stress", "--cpu", "2", "--timeout", "300"])  # Simulate CPU load
    subprocess.run(["fio", "--name=test", "--rw=readwrite", "--bs=4k", "--size=500M", "--time_based", "--runtime=300", "--ioengine=libaio"])  # Simulate IO load
    print("Simulation complete!")

if __name__ == "__main__":
    run_simulations()
