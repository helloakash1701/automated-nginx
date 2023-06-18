#!/bin/bash

# Prompt for GitHub repository link
read -p "Enter GitHub repository link: " repo_link

# Clone the repository and save it as "tutorial"
sudo git clone "$repo_link" /tutorial

# Move all files to the "tutorial" folder
cd /var/www
sudo mkdir tutorial
sudo mv /tutorial/* /var/www/tutorial

# Clean up temporary directory
sudo rm -rf /tutorial

echo "Download and file transfer completed."
