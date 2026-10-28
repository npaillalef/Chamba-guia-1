# Guía N.º 1 — Exploración de señal 1D e imagen 2D

**Asignatura:** INFB6052, Herramientas para Ciencia de Datos — UTEM  
**Objetivo:** exploración reproducible de dos archivos **reales** sin entrenar modelos de IA.  
**Entregable:** notebook, informe Word, presentación HTML, figuras, fuentes y archivos de reproducibilidad.

## COMIENZA AQUÍ (Windows y VS Code)

1. Descomprime el ZIP entero, sin mover archivos de sus carpetas.
2. Abre **Visual Studio Code** → **Archivo / File → Abrir carpeta / Open Folder** → selecciona la carpeta que contiene directamente `notebooks/`, `datos/` y `requirements.txt` (evita abrir una carpeta contenedora adicional).
3. En VS Code abre **Terminal → Nueva terminal**. Ejecuta estos comandos **uno por uno**:

```powershell
py -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
.\.venv\Scripts\python.exe -m pip check
```

Si `py` no funciona pero `python` sí, sustituye la primera línea por `python -m venv .venv`. **No necesitas activar** PowerShell ni modificar su política de ejecución.

4. Instala las extensiones oficiales **Python** y **Jupyter** de Microsoft en VS Code, si no las tienes.
5. Abre `notebooks/exploracion_inicial.ipynb`. En la esquina superior derecha pulsa **Seleccionar kernel / Select Kernel** → **Python Environments** → el Python dentro de `.venv`.
6. Pulsa **Run All / Ejecutar todas**. Debe generar resultados con los dos datasets ya incluidos.
7. Comprueba que se vean la señal 1D, la imagen RGB y sus histogramas. 
8. Guarda tus versiones efectivamente instaladas desde la terminal:

```powershell
.\.venv\Scripts\python.exe -m pip freeze > requirements_instaladas.txt
```

## ¿Qué incluye el proyecto?

- `datos/senal_1d/nile.csv`: **datos reales** del Nilo 1871–1970 (dominio público).
- `datos/imagen_2d/rocket.jpg`: **imagen real** de ingeniería aeroespacial (dominio público).
- `notebooks/exploracion_inicial.ipynb`: notebook reproducible (sin descargas en línea).
- `figuras/`: gráficas basadas en ambos archivos originales.
- `informe_tecnico.docx` y `presentacion.html`: documentos editables preparados con los resultados.
- `documentacion/FUENTES_Y_LICENCIAS.md`: procedencia y limitaciones.
- `documentacion/resultados_verificados.json`: estadísticas observadas y huellas SHA-256.
- `.gitignore` y `requirements.txt`.

## Interpretación y límites

Señal 1D: representa **años**, no muestras por segundo, por lo que no se inventa frecuencia de muestreo en Hz. La magnitud es un volumen anual expresado en 10^8 m³. Se preservan todas las filas.  
Imagen 2D: es una fotografía JPEG de tres canales RGB, **no** un sensor radiométrico calibrado. El gris se calcula únicamente sobre una copia en memoria; los canales de color originales se preservan.

## Referencias y licencias

Consulta `documentacion/FUENTES_Y_LICENCIAS.md` antes de publicar. Los recursos de origen se describen como de dominio público en sus respectivas fichas.

## Si tienes errores

- **No se reconoce `py`:** usa `python -m venv .venv`.
- **No aparece kernel:** instala extensiones Python/Jupyter, cierra y abre VS Code; selecciona `.venv\Scripts\python.exe`.
- **`ModuleNotFoundError`:** reinstala con `.\.venv\Scripts\python.exe -m pip install -r requirements.txt`.
- **`FileNotFoundError`:** abre la carpeta raíz del proyecto y conserva la estructura `datos/`, `notebooks/`.
- **Se bloquea Activate.ps1:** no lo necesitas; usa el ejecutable `.venv\Scripts\python.exe` directamente.

## Asistencia computacional

La estructura inicial, el código, las figuras y los borradores se prepararon con asistencia de IA. Es responsabilidad del estudiante **ejecutar, revisar, comprender y validar** el contenido y declarar el uso de asistentes. No atribuir las pruebas del equipo de validación a la computadora propia.

## Presentación HTML (reemplaza el PowerPoint)

- Archivo: `presentacion.html`, autocontenido y visible sin internet.
- Se abre con doble clic desde el Explorador de archivos, no es necesario ejecutar un servidor.
- Navegación con las flechas del teclado, botones inferiores y clic en los puntos; tecla `F` para pantalla completa, `N` para ver el guion oral, `Ctrl+P` para imprimir a PDF.
- El gráfico, fotografía y histogramas provienen de los archivos reales del proyecto.

