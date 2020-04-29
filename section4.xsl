<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
    
        <div class="text-center">
            <br/>
            <br/>
            <p>
                <i class="fas fa-info-circle"></i> Si quiere más información más detallada, pulse la fecha o sección deseada.</p>
            <br/>
            <div class="container">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th colspan="3">
                                    <h3>Temperatura máxima (°C)</h3>
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
                                    <td> 
                                        <h5> 
                                            
                                            <xsl:value-of select="$date-iso"/>
                                            
                                        </h5>
                                    </td>
                                </xsl:for-each>
                            </tr>
                            <tr>
                                <xsl:for-each select="/playa/prediccion/dia">
                                    <td>
                                        <h4>
                                            <xsl:value-of select="concat(t_maxima/@valor1,'ºC')"/>
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
