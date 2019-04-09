<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="row">
            <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <div class="col-lg-4 col-md-4 item">
            <h3>
                <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
            </h3>
            <nav class="list-group">
                <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
            </nav>
        </div>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <div class="list-group-item">
            <a>
            <xsl:attribute name='href'>
                <xsl:value-of select='Url'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='target'>
                <xsl:value-of select='Target'></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name='title'>
                <xsl:value-of select='Title'></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>