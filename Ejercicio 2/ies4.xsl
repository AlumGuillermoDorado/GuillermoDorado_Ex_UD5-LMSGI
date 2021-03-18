<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
<xsl:text>Nombre y apellidos: Guillermo Dorado</xsl:text><br/>
<xsl:for-each select="ies/ciclos/ciclo">
    <xsl:sort select="nombre" order="descending"/>
    <li><xsl:value-of select="nombre"/>
    <xsl:text>(</xsl:text><xsl:value-of select="grado"/><xsl:text>)</xsl:text><br/>     
    </li>
</xsl:for-each>
</body>
</html>

</xsl:template>
</xsl:stylesheet>