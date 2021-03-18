<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

    <xsl:text>Nombre y apellidos: Guillermo Dorado</xsl:text></br>
    <xsl:for-each select="bib/libro">
    <xsl:if test="precio &lt; 100">
        <li><xsl:value-of select="titulo"/><li>
    </xsl:if>
</xsl:for-each>


</xsl:template>
</xsl:stylesheet>