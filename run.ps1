# Run OptiQuery Web Application
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "Starting OptiQuery Web Application..." -ForegroundColor Cyan
Write-Host "========================================================" -ForegroundColor Cyan

$venvPython = Join-Path $PSScriptRoot ".venv\Scripts\python.exe"

if (Test-Path $venvPython) {
    Write-Host "Using virtual environment (.venv)..." -ForegroundColor Green
    & $venvPython (Join-Path $PSScriptRoot "app.py")
} else {
    Write-Host "Using system python..." -ForegroundColor Yellow
    py -3.13 (Join-Path $PSScriptRoot "app.py")
}
