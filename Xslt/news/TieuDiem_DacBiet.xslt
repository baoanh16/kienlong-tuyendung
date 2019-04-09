<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <div class="row">
            <div class="col">
                <div class="kienlong-title">
                    <h2 class="title">
                        <xsl:value-of disable-output-escaping='yes' select='/NewsList/ModuleTitle'></xsl:value-of>
                    </h2>
                </div>
            </div>
        </div>
        <div class="row list-item">
            <xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
        </div>
    </xsl:template>

    <xsl:template match='News'>
        <div class="col-sm-6 item">
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
                <figure>
                    <div class="item-img">
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
                    </div>
                    <figcaption>
                        <div class="item-title">
                            <h5>
                                <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
                            </h5>
                        </div>
                        <div class="time">
                            <time>
                                <xsl:value-of disable-output-escaping='yes' select='CreatedDD'></xsl:value-of>
                                <xsl:text>.</xsl:text>
                                <xsl:value-of disable-output-escaping='yes' select='CreatedMM'></xsl:value-of>
                                <xsl:text>.</xsl:text>
                                <xsl:value-of disable-output-escaping='yes' select='CreatedYYYY'></xsl:value-of>
                            </time>
                        </div>
                    </figcaption>
                </figure>
            </a>
            <xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>