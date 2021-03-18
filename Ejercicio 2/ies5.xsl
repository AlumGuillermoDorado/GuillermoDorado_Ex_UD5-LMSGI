<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:text>Nombre y apellidos: Guillermo Dorado</xsl:text><br/>
<h1>I.E.S Nuestra Sra. de los Remedios</h1>

<xsl:variable name="decretoTitulo"/><xsl:value-of select="@año"></xsl:variable>

<table>
    <tr>
    <th>Nombre</th>
    <th>Año</th>
    </tr>
<xsl:for-each select="ies/ciclos/ciclo">
<xsl:choose>
    <xsl:when test="@año = 2009">
    <tr>  
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="@año" color="#13FF00"/></td>
    </tr>
    </xsl:when>
    <xsl:when test="@año &gt; 2009">
    <tr>  
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="@año" color="#0021FF"/></td>
    </tr>  
    </xsl:when>
    <xsl:when test="@año &lt; 2009">
    <tr>  
        <td><xsl:value-of select="nombre"/></td>
        <td><xsl:value-of select="@año" color="#FF2D00"/></td>
    </tr>  
    </xsl:when>
</xsl:choose>   
</xsl:for-each>
</table>

</xsl:template>
</xsl:stylesheet>