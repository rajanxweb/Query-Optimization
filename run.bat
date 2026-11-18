@echo off
echo ========================================================
echo Starting OptiQuery Web Application...
echo ========================================================

if exist ".venv\Scripts\python.exe" (
    echo Using virtual environment .venv...
    ".venv\Scripts\python.exe" app.py
) else (
    echo Virtual environment not found, attempting system python...
    py -3.13 app.py || python app.py
)
pause
