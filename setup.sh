#!/bin/bash

# Check if Python 3 is installed
if command -v python3 &> /dev/null; then
	echo "Python 3 is already installed."
else
	echo "Error: Python 3 is not installed. Please install Python 3."
	exit 1
fi

# Check if Conda is installed
if command -v conda &> /dev/null; then
	echo "Conda is already installed."
else
	echo "Error: Conda is not installed. Please install Conda."
	exit 1
fi

# Verify the installation of PyTorch
if python3 -c "import torch" &> /dev/null; then
	echo "PyTorch is already installed."
else
	echo "Error: PyTorch installation failed. Activate conda environment."
	exit 1
fi

# Prompt the user for a custom display name
read -p "Enter a custom display name for the IPython kernel (default: Python 3.11 (pytorch)): " custom_display_name
custom_display_name="${custom_display_name:-Python 3.11 (pytorch)}"

# Install IPython kernel with the custom display name
python3 -m ipykernel install --user --name pytorch --display-name "$custom_display_name"

echo "Setup complete. You can now run animal_classifier."
