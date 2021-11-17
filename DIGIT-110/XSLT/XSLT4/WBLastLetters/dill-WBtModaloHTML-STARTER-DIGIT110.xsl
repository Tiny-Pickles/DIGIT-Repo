<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:variable name="WBColl" select="collection('XML/?select=*.xml')"/>   
    
    <!--This is a starter file for modal XSLT processing. The @mode attribute in XSLT lets you
    process the same node in multiple ways! -->
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Warren Behrend’s Last Correspondence and Memorial</title>
                <link rel="stylesheet" type="text/css" href="style.css"/>
            </head>
            <body>
                <h1>Warren Behrend’s Last Correspondence and Memorial</h1>
                
                <section id="toc">
                    <h2>Contents</h2>
                    <ul>
                      <xsl:apply-templates select="$WBColl//xml" mode="toc"/>   
                    </ul>
                </section>
                <section id="fulltext">            
                    <xsl:apply-templates select="$WBColl//xml"/>
                </section>
  
            </body>
        </html>
    </xsl:template>
    
    <!--Templates in toc mode for the table of contents -->
    <xsl:template match="xml" mode="toc">
        <li><xsl:apply-templates select="meta//title"/></li>
    </xsl:template>
    

 
    <!--Normal templates for fulltext view -->
    <!--<xsl:template match="xml">
        <xsl:apply-templates/> 
    </xsl:template>-->
    
    
    
    <xsl:template match="title">
        <h2 class="titles"><xsl:apply-templates/></h2>
    </xsl:template>
    
    <xsl:template match="body">
        <div class="body"><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="p">
        <div class="paras"><span class="lineNum"><xsl:value-of select="@n"/></span><xsl:apply-templates/></div>
    </xsl:template>
    
    <xsl:template match="facsimile">
        <div class="images"><xsl:apply-templates/></div>
    </xsl:template>
    
    <!-- develop --> 
  
    
</xsl:stylesheet>