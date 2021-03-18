<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">

<xsl:text>Nombre y apellidos: Guillermo Dorado</xsl:text></br>
<table>
    <xsl:for-each select="bib/libro">
    <xsl:sort select="precio" type="text">
    <xsl:choose>
    <xsl:when test="precio &gt; 100">
    <tr>
        <td><xsl:value-of select="precio"></td>
        <td><xsl:value-of select="titulo" color="#FF0000"></td>
        <td><xsl:value-of select="@año"></td>
    </tr>
    <xsl:otherwise>
        <tr>
            <td><xsl:value-of select="precio"></td>
            <td><xsl:value-of select="titulo"></td>
            <td><xsl:value-of select="@año"></td>
        </tr>
    </xsl:otherwise>
    </xsl:when>
    </xsl:choose>
</table>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>