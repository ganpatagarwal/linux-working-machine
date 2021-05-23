#! /usr/bin/python3
import subprocess
import sys

def main():
    print("Running container command process indefinitely...")
    subprocess.Popen('tail -F /dev/null', shell=True).wait()

if __name__ == "__main__":
    sys.exit(main())