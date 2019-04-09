<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <h2>
            <xsl:value-of disable-output-escaping='yes' select='/NewsList/ZoneTitle'></xsl:value-of>
        </h2>
        <p>
            <xsl:value-of disable-output-escaping='yes' select='/NewsList/ZoneDescription'></xsl:value-of>
        </p>
        <div class="items-list">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='News'>
        <div class="item">
            <div class="title">
                <img>
                <xsl:attribute name='src'>
                    <xsl:value-of select='ImageUrl'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='alt'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name='title'>
                    <xsl:value-of select='Title'></xsl:value-of>
                </xsl:attribute>
                </img>
                <span>
                    <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                </span>
                <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
            </div>
            <div class="content">
                <xsl:value-of disable-output-escaping='yes' select='BriefContent'></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>