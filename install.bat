@echo on

mkdir venu
cd venu
python -m venv env
call env/Scripts\activate
python -m ensurepip --upgrade
curl -L -o LSVM.zip https://github.com/Super-Fractal/LSVM/releases/download/v0.2/LSVM.zip
powershell -Command "Expand-Archive -Path LSVM.zip -DestinationPath LSVM"
robocopy LSVM\LSVM-main LSVM /E /MOVE
rmdir /s /q LSVM\LSVM-main

cd LSVM
pip install -r requirements.txt
python -c "print('Install Completed')"
pause
deactivate
