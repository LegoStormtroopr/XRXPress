<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom" 
    xmlns:abe="https://github.com/LegoStormtroopr/XRXPress"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd"
    version="1.0">
    <xsl:template match="atom:title">
        <xsl:variable name="id" select="../atom:id"/>
        <h1><a href="post.xqr?id={$id}"><xsl:value-of select="."/></a></h1>
    </xsl:template>
    <xsl:template match="atom:entry">
        <div class="post">
            <xsl:apply-templates/>
        </div>
    </xsl:template>
    <xsl:template match="atom:summary">
        <p class="summary"><xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="*" />
</xsl:stylesheet>