#!/usr/bin/bash

echo "gracias por descargar mi página web"



cat << EOF > index.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Index</title>
    <link rel="stylesheet" href="w3.css">
</head>
<body>
    <a href="pag1.html">Página 1</a>
    <a href="pag2.html">Página 2</a>
    <a href="pag3.html">Página 3</a>
</body>
</html>
EOF

cat << EOF > pag1.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 1</title>
    <link rel="stylesheet" href="w3.css">
</head>
<body>
    <p>Bienvenido a la página 1</p>
    <a href="index.html">Volver</a>
</body>
</html>
EOF

cat << EOF > pag2.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 2</title>
    <link rel="stylesheet" href="w3.css">
</head>
<body>
    <p>Bienvenido a la página 2</p>
    <a href="index.html">Volver</a>
</body>
</html>
EOF


cat << EOF > pag3.html
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página 3</title>
    <link rel="stylesheet" href="w3.css">
</head>
<body>
    <p>Bienvenido a la página 3</p>
    <a href="index.html">Volver</a>
</body>
</html>
EOF


if [ -f w3.css ]; then

echo "No es necesario descargar w3.css"

else

echo "Descargando la hoja de estilos."

if command -v wget > /dev/null; then
wget -q --show-progress -O pag/w3.css www.w3schools.com/w3css/4/w3.css || { echo "Fallo al descargar"; exit 1; }
fi

fi
