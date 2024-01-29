<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" type="text/css" href="./assets/css/styles.css" />
            </head>
            <body>
                <h2>My Book Collection</h2>
                <table border="1">
                    <th>Precio</th>
                    <th>Autor</th>
                    <th>Nº de páginas</th>
                    <th>Portada</th>
                    <xsl:apply-templates />
                </table>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="/libreria/libros/libro">
        <tr>
            <td>
                <xsl:value-of select="precio" />
                <xsl:value-of select="precio/@moneda" />
            </td>
            <td>
                <xsl:value-of select="autor" />

            </td>
            <td>
                <xsl:value-of select="numeroPáginas" />
            </td>
            <td>
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="portada" />
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="titulo" />
                    </xsl:attribute>
                </img>
            </td>
        </tr>
    </xsl:template>
</xsl:stylesheet>