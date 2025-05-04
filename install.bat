@echo on

mkdir venu
cd venu
python -m venv env

call env/Scripts\activate
python -m ensurepip --upgrade
git clone https://github.com/Super-Fractal/LSVM
cd LSVM

pip install -r requirements.txt
python -c "print('Install Completed')"
pause
deactivate
