<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
        </ul>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <xsl:if test="position() = 1">
            <li class="nav-item">
                <a class="nav-link active" id="recruit-tab" data-toggle="tab" href="#recruit" role="tab" aria-controls="recruit"
                    aria-selected="true">
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name='class'>
                            <xsl:text>nav-link active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </a>
            </li>
        </xsl:if>
        <xsl:if test="position() = 2">
            <li class="nav-item">
                <a class="nav-link" id="inter-tab" data-toggle="tab" href="#inter" role="tab" aria-controls="inter"
                    aria-selected="false">
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name='class'>
                            <xsl:text>nav-link active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </a>
            </li>
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>