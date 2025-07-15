#!/bin/bash

# Update package index
echo "Updating package index..."
sudo apt update

# Install Java (OpenJDK)
echo "Installing OpenJDK..."
sudo apt install -y openjdk-11-jdk

# Verify Java installation
java -version

# Set JAVA_HOME environment variable
echo "Setting JAVA_HOME..."
echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
source ~/.bashrc

# Install Maven
echo "Installing Maven..."
sudo apt install -y maven

# Verify Maven installation
mvn -version

# Optionally, install additional dependencies (if needed)
# For example, if you need Git
echo "Installing Git..."
sudo apt install -y git

# Clean up
echo "Cleaning up..."
sudo apt autoremove -y

echo "Maven and its dependencies have been installed successfully!"
