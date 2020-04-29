<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        
          
        <div class="text-center">
            <br/>
            <xsl:variable name="fecha" select="/playa/prediccion/dia[3]/@fecha"/>
            <xsl:variable name="year" select="substring($fecha, 1, 4)"/>
            <xsl:variable name="month" select="substring($fecha, 5, 2)"/>
            <xsl:variable name="day" select="substring($fecha, 7, 2)"/>
            <xsl:variable name="date-iso" select="concat($day, '-', $month, '-', $year)" /> 
            <p>
                <i class="fas fa-info-circle"></i> Información más detallada del <xsl:value-of select="$date-iso"/>
            </p>  
            <div class="container">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped text-cente">
                        <thead>
                            <tr>
                                <th rowspan="2">
                                </th> 
                                <th colspan="2"> 
                                    
                                    <xsl:value-of select="$date-iso"/>
                                  
                                </th>
                            </tr>
                            <tr>
                               
                                <th>Mañana</th>
                                
                                <th>Tarde</th>
                                
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>
                                    <h3>Estado del cielo</h3>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/estado_cielo/@descripcion1"/>
                                    </h4>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/estado_cielo/@descripcion2"/>
                                    </h4>
                                </td>
                            </tr> 
                            <tr>
                                <td>
                                    <h3>Viento</h3>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/viento/@descripcion1"/>
                                    </h4>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/viento/@descripcion2"/>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h3>Oleaje</h3>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/oleaje/@descripcion1"/>
                                    </h4>
                                </td>
                                <td>
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/oleaje/@descripcion2"/>
                                    </h4>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <h3>Temperatura máxima (°C)</h3>
                                </td>
                                <td colspan="2">
                                    <h4>
                                        <xsl:value-of select="concat(/playa/prediccion/dia[3]/t_maxima/@valor1,'ºC')"/>
                                    </h4>
                                </td>
                                                           
                            </tr>
                            <tr>
                                <td>
                                    <h3>Sensación térmica</h3>
                                </td>
                                                            
                                <td colspan="2">
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/s_termica/@descripcion1"/>
                                    </h4>
                                </td>
                            </tr> 
                            <tr>
                                <td>
                                    <h3>Temperatura del agua (°C)</h3>
                                </td>
                                                           
                                <td colspan="2">
                                    <h4>
                                        <xsl:value-of select="concat(/playa/prediccion/dia[3]/t_agua/@valor1, 'ºC')"/>
                                    </h4>
                                </td>
                                                            
                            </tr>
                            <tr>
                                <td>
                                    <h3>Índice UV máximo</h3>
                                </td>
                                <td colspan="2">
                                    <h4>
                                        <xsl:value-of select="/playa/prediccion/dia[3]/uv_max/@valor1"/>
                                    </h4>
                                </td>
                            </tr>   
                        </tbody>
                    </table>
                    <a class="nav-link" href="index.html">
                        <i class="fas fa-arrow-circle-left"></i>Regresa al inicio</a>
                </div>
            </div>
            <br/>         
        </div>
                                
    </xsl:template>

</xsl:stylesheet>
