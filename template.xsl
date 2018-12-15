<?xml version="1.0" ?>
<!DOCTYPE stylesheet [
    <!ENTITY eacute "é">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" doctype-system="about:legacy-compat" />
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Noto+Serif+SC" />
                <link rel="stylesheet" href="style.css" />
                <title>c&eacute;</title>
            </head>
            <body>
                <div id="container">
                    <header>
                        <h1>c&eacute;</h1>
                    </header>
                    <nav>
                        <xsl:element name="a">
                            <xsl:attribute name="href">.</xsl:attribute>
                            <xsl:if test="/page/@id = 'about'">
                                <xsl:attribute name="id">active</xsl:attribute>
                            </xsl:if>
                            About
                        </xsl:element>
                        <xsl:element name="a">
                            <xsl:attribute name="href">resume.html</xsl:attribute>
                            <xsl:if test="/page/@id = 'resume'">
                                <xsl:attribute name="id">active</xsl:attribute>
                            </xsl:if>
                            R&eacute;sum&eacute;
                        </xsl:element>
                        <xsl:element name="a">
                            <xsl:attribute name="href">contact.html</xsl:attribute>
                            <xsl:if test="/page/@id = 'contact'">
                                <xsl:attribute name="id">active</xsl:attribute>
                            </xsl:if>
                            Contact
                        </xsl:element>
                    </nav>
                    <xsl:copy-of select="/page/article" />
                    <xsl:copy-of select="/page/aside" />
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
