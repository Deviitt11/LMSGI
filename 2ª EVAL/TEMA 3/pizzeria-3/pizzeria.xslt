<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <link rel="stylesheet" href="./assets/css/styles.css" />
            </head>
            <body>
                <h1>Pizzeria La Cosa Nostra</h1>
                <table>
                    <tr>
                        <th colspan="2">
                            <h2>
                                PIZZAS
                            </h2>
                        </th>
                    </tr>
                    <xsl:for-each select="pizzeria/pizzas/pizza">
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
                    </xsl:for-each>
                </table>

                <table>
                    <tr>
                        <th colspan="2">
                            <h2>
                                VINOS
                            </h2>
                        </th>
                    </tr>
                    <xsl:for-each select="pizzeria/vinos/vino">
                        <tr>
                            <td>
                                <h3>
                                    <xsl:value-of select="marca" />
                                </h3>
                                <p>
                                    <xsl:value-of select="precio" />
                                    <xsl:value-of select="precio/@moneda" />
                                </p>
                                <p>
                                    <xsl:value-of select="tipo" />
                                </p>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

            </body>
        </html>
    </xsl:template>

    <xsl:template match="/pizzeria/pizzas/pizza"> </xsl:template>
</xsl:stylesheet>