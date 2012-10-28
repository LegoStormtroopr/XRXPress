<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:atom="http://www.w3.org/2005/Atom" 
    xmlns:abe="https://github.com/LegoStormtroopr/XRXPress"
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xmlns:xf="http://www.w3.org/2002/xforms"
    xsi:schemaLocation="http://www.w3.org/1999/xhtml http://www.w3.org/MarkUp/SCHEMA/xhtml11.xsd"
    version="1.0">
    <xsl:import href="Common.xsl"/>
    <xsl:template match="/">
        <div>
            <xsl:apply-templates />
        </div>
    </xsl:template>
    <xsl:template match="atom:content">
        <xsl:copy-of select="."/>
    </xsl:template>
    
    <xsl:template match="abe:comments">
        <div id='comments'>
            <h2>Comments</h2>
            <xsl:apply-templates />
            <div id="newcomment">
                <xf:input ref="//abe:comment/@name">
                    <xf:label>Name</xf:label>
                </xf:input>
                <xf:input ref="//abe:comment/@email">
                    <xf:label>Email Address</xf:label>
                </xf:input>
                <xf:input ref="//abe:comment">
                    <xf:label>Comment</xf:label>
                </xf:input>
            </div>
        </div>
    </xsl:template>

    <xsl:template match="abe:comment">
        <div class="comment">
            <xsl:variable name="email" select="@email"/>
            <!-- xsl:variable name="emailHash" select="document('/hashr.xqr?id={$email}')"></xsl:variable -->
            <span class="author">
                <xsl:value-of select="@name"/>
            </span>
            <xsl:value-of select="."/>
        </div>
    </xsl:template>
    
</xsl:stylesheet>