#!/bin/bash

# configure git
git config --global user.email "$EMAIL"
git config --global user.name "$USERNAME"

# Execute python script which will run the container forever.
python3 /root/cmd.py
