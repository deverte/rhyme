poetry run pyinstaller ./rhyme/main.py --distpath ./dist -F -p ./.venv
Move-Item -Path './dist/main.exe' -Destination './dist/rhyme.exe' -Force