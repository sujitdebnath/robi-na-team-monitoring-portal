# Install virtual environment package for python3 
sudo apt-get install python3-venv

# Create virtual environment
python3 -m venv <env-name>

Example:
python3 -m venv robi

# Activate virtual environment -- For ubuntu
. robi/bin/activate

# First time install all necessary module in virtual environment from requirement.txt
pip install -r requirement.txt 

# Deactivate virtual environment
deactivate

# If you install new package in the project virtual environment, please update it to requirement.txt
pip freeze > requirement.txt

# To start and stop the xampp
sudo /opt/lampp/lampp start
sudo /opt/lampp/lampp stop

# mysql shell ---- version check
SHOW VARIABLES LIKE "%version%";
