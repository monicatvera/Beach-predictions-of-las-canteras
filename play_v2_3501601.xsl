<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="xml"/>

    <xsl:template match="/">
        <playa nombre="{/playa/nombre}">
            <predicciones>
                <xsl:for-each select="/playa/prediccion/dia">
                <dia fecha="{@fecha}">
                <estado_cielo>
                    <xsl:value-of select="estado_cielo/@descripcion1"/>
                </estado_cielo>
                <viento>
                    <xsl:value-of select="viento/@descripcion1"/>
                </viento>
                <oleaje>
                    <xsl:value-of select="oleaje/@descripcion1"/>
                </oleaje>
                <t_maxima>
                     <xsl:value-of select="t_maxima/@valor1"/>
                </t_maxima>
                <s_termica>
                    <xsl:value-of select="s_termica/@descripcion1"/>
                </s_termica>
                <t_agua>
                    <xsl:value-of select="t_agua/@valor1"/>
                </t_agua>
                <uv_max>
                    <xsl:value-of select="uv_max/@valor1"/>
                </uv_max>
                </dia>
                </xsl:for-each>
            </predicciones>
        </playa>
    </xsl:template>

</xsl:stylesheet>
