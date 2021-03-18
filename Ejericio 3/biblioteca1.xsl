<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>
    <xsl:text>Nombre y apellidos: Guillermo Dorado</xsl:text>
    <xsl:for-each select="bib/libro">
        <xsl:for-each select="autor">
        <xsl:sort select="apellido" type="text"/>
        <li><xsl:value-of select="apellido"/>
            <xsl:value-of select="nombre"/></li></br>
        </xsl:for-each>
    </xsl:for-each>

</body>
</html>
</xsl:template>
</xsl:stylesheet>