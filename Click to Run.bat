cls

echo "Welcome to the Pokemon Go mapapp. User Interface developed for non-developer Pokemon fanatics. All credits to AHAAAAAAA/PokemonGo-Map"
@echo off
set /p id="Enter Authentication method (google for Google,ptc for Pokemon trainer club: "
set /p user="Enter Username: "
set /p pass="Enter Password: "
set /p lat="Enter Latitute: "
set /p lon="Enter Longitude: "
set /p step="Enter Step Radius to catch pokemon: "
msiexec /i python-2.7.12.amd64.msi
python get-pip.py
pip install -r requirements.txt
start http://127.0.0.1:5000
python example.py -a %id% -u %user% -p %pass% -l "%lat%,%lon%" -st %step%
