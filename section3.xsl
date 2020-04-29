<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    
        <div class="text-center">
            <br/>
            <br/>
            <p>
                <i class="fas fa-info-circle"></i> Si quiere más información más detallada, pulse la fecha o sección deseada.</p>
            <div class="container">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th colspan="6">
                                    <h3>Oleaje</h3>
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <xsl:for-each select="/playa/prediccion/dia">
                                    
                                    <xsl:variable name="fecha" select="@fecha"/>
                                    <xsl:variable name="year" select="substring($fecha, 1, 4)"/>
                                    <xsl:variable name="month" select="substring($fecha, 5, 2)"/>
                                    <xsl:variable name="day" select="substring($fecha, 7, 2)"/>
                                    <xsl:variable name="date-iso" select="concat($day, '-', $month, '-', $year)" />  
                                    <td colspan="2"> 
                                        <h5> 
                                            
                                            <xsl:value-of select="$date-iso"/>
                                            
                                        </h5>
                                    </td>
                                </xsl:for-each>
                            </tr>
                            <tr>
                                <td>Mañana</td>
                                <td>Tarde</td>
                                <td>Mañana</td>
                                <td>Tarde</td>
                                <td>Mañana</td>
                                <td>Tarde</td>
                            </tr>
                            <tr>
                                <xsl:for-each select="/playa/prediccion/dia">
                                    <td>
                                        <h4>
                                            <xsl:value-of select="oleaje/@descripcion1"/>
                                        </h4>
                                    </td>
                                    <td>
                                        <h4>
                                            <xsl:value-of select="oleaje/@descripcion2"/>
                                        </h4>
                                    </td>
                                </xsl:for-each>
                            </tr>
                          
                        </tbody>
                 
                    </table>
                    <a href="index.html">
                        <i class="fas fa-arrow-circle-left"></i>Regresa al inicio</a>
                </div>
            </div>
            <br/>         
        </div>
        <br/>
        <br/>                    
    </xsl:template>

</xsl:stylesheet>
