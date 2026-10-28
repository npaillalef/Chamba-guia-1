@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Instalando entorno para Guia 1...
where py >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    py -m venv .venv
) else (
    python -m venv .venv
)
if errorlevel 1 goto :error
.venv\Scripts\python.exe -m pip install --upgrade pip
if errorlevel 1 goto :error
.venv\Scripts\python.exe -m pip install -r requirements.txt
if errorlevel 1 goto :error
.venv\Scripts\python.exe -m pip check
if errorlevel 1 goto :error
.venv\Scripts\python.exe -c "import numpy, pandas, matplotlib, PIL, ipykernel; print('IMPORTACIONES OK')"
if errorlevel 1 goto :error
echo.
echo INSTALACION CORRECTA. Selecciona el kernel .venv en VS Code.
pause
exit /b 0
:error
echo.
echo ERROR en la instalacion. Copia el mensaje y revisa el problema.
pause
exit /b 1
