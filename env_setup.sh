# This shell script will set up the environment for the project and install the required packages.

# create a new conda environment for the project named py39 with Python 3.9 and activate it

# First check if conda is installed
echo "[INFO] Checking if conda is installed"
if ! command -v conda &> /dev/null
then
    echo "[ERROR] conda could not be found"
    exit
fi

# Check if the environment already exists
if conda env list | grep -q "py39"
then
    echo "[WARNING] Environment already exists"
    exit
fi

# Create the environment
conda create -n py39 python=3.9

# Activate the environment
conda activate py39

# Install the required packages
pip install -r requirements.txt

echo "[INFO] Environment setup complete"