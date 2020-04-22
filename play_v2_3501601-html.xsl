<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <!-- Required meta tags -->
                <meta http-equiv='X-UA-Compatible' content='IE=edge'/>
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
                <title>Prediciones Las Canteras</title>
                <meta name="author" content="Mónica Ilenia Tardón Vera" />
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"/>
                <!-- jQuery library -->
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
                <!-- Popper JS -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                <!-- Latest compiled JavaScript -->
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.1/css/all.css"
                      integrity="sha384-O8whS3fhG2OnA5Kas0Y9l3cfpmYjapjI0E4theH4iuMD+pLhbf6JI0jIMfYcK3yZ" crossorigin="anonymous"/>
                <!-- The core Firebase JS SDK is always required and must be listed first -->
                <script src="https://www.gstatic.com/firebasejs/7.6.2/firebase-app.js"></script>
                <!-- style CSS -->
                <link rel="stylesheet" href="css/style.css"/>                        
            </head>
            <body>
                <header>
                    <div class="container">
                        <div class="row align-items-center blue darken-4">
                            <div class="col-lg-12 text-center">
                                <h1>Predicción playa de Las Canteras</h1>   
                            </div>
                        </div>
                    </div>
                </header>
                <section class="breadcrumb">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12">
                                <div>
                                    <div class="text-center">
                                        <br/>
                                        <br/>
                                        <div class="container">
                                            <div class="table-responsive">
                                                <table class="table table-bordered table-striped">
                                                    <thead>
                                                        <tr>
                                                            <th>Predicción playa de <xsl:value-of select="/playa/nombre"/></th>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <xsl:variable name="fecha" select="@fecha"/>
                                                                <xsl:variable name="year" select="substring($fecha, 1, 4)"/>
                                                                <xsl:variable name="month" select="substring($fecha, 5, 2)"/>
                                                                <xsl:variable name="day" select="substring($fecha, 7, 2)"/>
                                                                <xsl:variable name="date-iso" select="concat($day, '-', $month, '-', $year)" />  
                                                                <th> 
                                                                    <xsl:value-of select="$date-iso"/>
                                                                </th>
                                                            </xsl:for-each>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <h2>Estado del cielo</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="estado_cielo/@descripcion1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr> 
                                                        <tr>
                                                            <td>
                                                                <h2>Viento</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="viento/@descripcion1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <h2>Oleaje</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="oleaje/@descripcion1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <h2>Temperatura máxima (°C)</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="t_maxima/@valor1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <h2>Sensación térmica</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="s_termica/@descripcion1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr> 
                                                        <tr>
                                                            <td>
                                                                <h2>Temperatura del agua (°C)</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="t_agua/@valor1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <h2>Índice UV máximo</h2>
                                                            </td>
                                                            <xsl:for-each select="/playa/prediccion/dia">
                                                                <td>
                                                                    <h4>
                                                                        <xsl:value-of select="uv_max/@valor1"/>
                                                                    </h4>
                                                                </td>
                                                            </xsl:for-each>
                                                        </tr>   
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <br/>         
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>        
                <footer class="page-footer font-small blue darken-4">

                    <!-- Copyright -->
                    <div class="footer-copyright text-center py-3">
                        <p> © 2020 Todos los derechos reservados.</p>
                    </div>
                    <!-- Copyright -->

                </footer>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
