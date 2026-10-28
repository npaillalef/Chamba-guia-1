# Fuentes de datos y condiciones de uso

Fecha de consulta de la documentación: 27 de octubre de 2026.

## Archivo 1 — `datos/senal_1d/nile.csv`

- **Fuente:** statsmodels, conjunto `nile`.
- **Página específica:** https://www.statsmodels.org/dev/datasets/generated/nile.html
- **Archivo original distribuido con statsmodels:** `statsmodels/datasets/nile/nile.csv`.
- **Origen bibliográfico indicado:** Cobb, G. W. (1978), *The Problem of the Nile: Conditional Solution to a Changepoint Problem*, Biometrika 65(2), 243–251.
- **Período:** 1871–1970.
- **Fenómeno:** volumen anual del caudal del río Nilo en Asuán.
- **Unidades:** 10^8 m³ por año (según documentación statsmodels).
- **Eje horizontal:** año del registro; NO es índice con muestreo en Hz.
- **Licencia:** dominio público, según documentación oficial de statsmodels.
- **Limitaciones:** no constan método de calibración, incertidumbre ni condiciones detalladas de medición en el archivo CSV. La propia documentación menciona un posible cambio de régimen cercano a 1898, pero esta exploración no prueba su causa.

## Archivo 2 — `datos/imagen_2d/rocket.jpg`

- **Fuente:** scikit-image, imagen `skimage.data.rocket()`.
- **Página específica:** https://scikit-image.org/docs/stable/api/skimage.data.html#skimage.data.rocket
- **Procedencia original:** fotografía de SpaceX Photos: https://www.flickr.com/photos/spacexphotos/16511594820/in/photostream/
- **Fenómeno:** lanzamiento de Falcon 9 que transportaba el satélite DSCOVR.
- **Modalidad:** JPEG de color RGB, fotografía óptica (no radiometría calibrada).
- **Licencia:** dominio público, conforme al registro de scikit-image.
- **Unidades y ejes:** píxeles para los ejes espaciales; niveles digitales de 0 a 255 para los canales de color. No hay escala métrica verificable.
- **Limitaciones:** imagen comprimida JPEG, sin referencia geométrica ni escala física documentada en esta copia. No se pueden diagnosticar defectos del vehículo a partir de un histograma.

## Conservación y trazabilidad

Ambos archivos originales se incluyen sin modificaciones. Los análisis producen arreglos en memoria y gráficos separados en `figuras/`. `documentacion/resultados_verificados.json` conserva hashes SHA-256 para verificar integridad.
