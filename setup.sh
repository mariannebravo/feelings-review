# run sh ./setup.sh

# 1. initialize python virtual environment (venv) with Python 3
python3 -m venv venv 

# 2. Activate venv

# For MacOS
source ./venv/bin/activate

# For Windows (Command Prompt)
# venv\Scripts\activate.bat

# 3. Install dependencies
pip install -r ./requirements.txt

# 4. Download datasets
python datasets.py
