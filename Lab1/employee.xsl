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
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phones</th>
                        <th>Addresses</th>
                    </tr>
                    <xsl:for-each select="Employees/Employee">
                        <tr>
                            <td>
                                <xsl:value-of select="Name"/>
                            </td>
                            <td>
                                <xsl:value-of select="Email"/>
                            </td>

                            <td>
                                <tr>
                                    <th>
                                        Type
                                    </th>
                                    <th>
                                        Number
                                    </th>
                                </tr>
                                <xsl:for-each select="/Phones">
                                    <tr>
                                        <td>
                                            <xsl:value-of select="phone/Type"/>
                                        </td>
                                        <td>
                                            <xsl:value-of select="phone/Value"/>
                                        </td>
                                    </tr>
                                </xsl:for-each>
                            </td>
                            <td>
                                <tr>
                                    <th>
                                        Street
                                    </th>
                                    <th>
                                        Building-no
                                    </th>
                                    <th>
                                        Region
                                    </th>
                                    <th>
                                        City
                                    </th>
                                    <th>
                                        Country
                                    </th>
                                </tr>
                                <xsl:for-each select="Employees/Addresses">
                                    <tr>
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
                                    </tr>
                                </xsl:for-each>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>