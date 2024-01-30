<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./assets/css/styles.css"/>
            </head>
            <body>
                <h1>Pizzeria La Cosa Nostra</h1>
                <table>
                    <xsl:apply-templates />
                </table>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="/pizzeria/pizzas/pizza">
        <tr>
            <td>
                <h3>
                    <xsl:value-of select="nombre" />
                </h3>
                <p>
                    <xsl:value-of select="precio" />
                    <xsl:value-of select="precio/@moneda" />
                </p>
                <p>
                    <xsl:value-of select="masa" />
                    <xsl:value-of select="masa/@masaTipo" />
                </p>
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="foto" />
                    </xsl:attribute>
                </img>
                
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>