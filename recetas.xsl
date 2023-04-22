<<<<<<< HEAD
<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/recetas/recetas.xml">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="<css/estilo.css>" />
				<title>XSLT de Lista de Recetas</title>
			</head>
			<body>
				<h1> :-) LISTA DE RECETAS  </h1>
                <h2>De comidas</h2>
		 		<xsl:apply-templates select="//receta]">
          			<xsl:sort select="nombre" order="descending" />
				</xsl:apply-templates>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="receta">
		 <h3> <xsl:value-of select="nombre"/> </h3>
	</xsl:template>
</xsl:stylesheet>
=======
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >
  <xsl:template match="/">
    <html>
      <head>
        <title>Recetas</title>
        <link rel="stylesheet" type="text/css" href="recetas.css" />
      </head>
      <body>
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
          <xsl:for-each select="recetas/receta">
            <tr>
              <td><xsl:value-of select="nombre"/></td>
              <td><xsl:value-of select="tiempo"/></td>
              <td><xsl:value-of select="dificultad"/></td>
              <td><xsl:value-of select="ingredientes"/></td>
              <td><xsl:value-of select="tipo"/></td>
              <td><xsl:value-of select="Filtro"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
>>>>>>> c794a60817d9bfbfaddcf6805ce4fc582fcc0b94
