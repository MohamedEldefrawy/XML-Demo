<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Employees</title>
                <link rel="stylesheet" href="./css/employee.css"/>
            </head>
            <body>
                <table>
                    <tr>
                        <th rowspan="2">Name</th>
                        <th rowspan="2">Email</th>
                        <th rowspan="2" colspan="2">
                            <div>
                                Phones
                            </div>
                            <hr/>
                            <span>
                                Type
                            </span>
                            <span>
                                Number
                            </span>

                        </th>
                        <th colspan="5" rowspan="2">
                            <div>Addresses</div>
                            <hr/>
                            <span>
                                Street
                            </span>
                            <span>
                                Building-no
                            </span>
                            <span>
                                Region
                            </span>
                            <span>
                                City
                            </span>
                            <span>
                                Country
                            </span>
                        </th>
                    </tr>

                    <tr>
                        <xsl:for-each select="Employees/Employee">
                            <tr>
                                <td>
                                    <xsl:value-of select="Name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Email"/>
                                </td>


                                <xsl:for-each select="Phones">
                                    <td>
                                        <xsl:value-of select="phone/Type"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="phone/Value"/>
                                    </td>
                                </xsl:for-each>
                                <xsl:for-each select="Addresses">
                                    <td>
                                        <xsl:value-of select="Address/Street"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Address/Building-no"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Address/Region"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Address/City"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="Address/Country"/>
                                    </td>
                                </xsl:for-each>
                            </tr>
                        </xsl:for-each>
                    </tr>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>