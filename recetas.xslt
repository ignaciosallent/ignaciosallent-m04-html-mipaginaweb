<?xml version="1.0" encoding="UTF-8"?>
<xslt:stylesheet version="1.0" xmlns:xslt="http://www.w3.org/1999/XSL/Transform" >
  <xslt:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <link rel="stylesheet" type="text/css" href="css/recetas.css" />
      </head>
      <body>
      <header class="navbar">
        <img src="/imagenes/Logo-Delicias.png" class="logo" alt="Esta imagen no carga"/>
        <div class="navbar">
          <ul>
            <li>
                <a href="index.html">INICIO</a>
            </li>
            <li>
                <a href="head/sobre_mi.html">SOBRE MI</a>
            </li>
            <li>
                <a href="recetas.xml">RECETAS</a>
            </li>
            <li>
                <a href="head/contacto.html">CONTACTO</a>
            </li>
            <li>
                <a href="head/otras_cosas.html">OTRAS COSAS</a>
            </li>                   
          </ul>
        </div>
      </header>
        <h1>Recetas</h1>
        <table>
          <tr>
            <th>Nombre</th>
            <th>Tiempo</th>
            <th>Dificultad</th>
            <th>Ingredientes</th>
            <th>Tipo</th>
            <th>Filtro</th>
          </tr>
          <xslt:for-each select="recetas/receta">
            <xslt:sort select="nombre"/>
            <tr>
              <td><xslt:value-of select="nombre"/></td>
              <td><xslt:value-of select="tiempo"/></td>
              <td><xslt:value-of select="dificultad"/></td>
              <td><xslt:value-of select="ingredientes"/></td>
              <td><xslt:value-of select="tipo"/></td>
              <td><xslt:value-of select="Filtro"/></td>
            </tr>
          </xslt:for-each>
        </table>
      </body>
    </html>
  </xslt:template>
</xslt:stylesheet>
