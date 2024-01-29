<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="xml"/>

<xsl:template match="/">
    <cifp>
        <xsl:for-each select="/ies/nombre"/>
        <nombre_insti><xsl:value-of select="nombre"/></nombre_insti>
        <ciclo>
            <xsl:for-each select="ies/ciclos/ciclo"/>
            <nombre><xsl:value-of select="nombre"/></nombre>
            <sigla><xsl:value-of select="@id"/></sigla>
            <grado><xsl:value-of select="grado"/></grado>

        </ciclo>
    </cifp>
 </xsl:template>
</xsl:stylesheet>