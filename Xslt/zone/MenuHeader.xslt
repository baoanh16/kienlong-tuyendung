<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
    exclude-result-prefixes='msxsl'>
    <xsl:output method='html' indent='yes' />
    <xsl:template match='/'>
        <ul class="main-menu">
            <xsl:apply-templates select='/ZoneList/Zone' mode="Zone1"></xsl:apply-templates>
        </ul>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone1">
        <xsl:choose>
            <xsl:when test="count(Zone) &gt; 1">
                <li class="menu-item">
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name='class'>
                            <xsl:text>menu-item active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <a class="menu-link has-sub">
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
                    <ul class="sub-menu">
                        <xsl:apply-templates select='Zone' mode="Zone2"></xsl:apply-templates>
                    </ul>
                </li>
            </xsl:when>
            <xsl:otherwise>
                <li class="menu-item">
                    <xsl:if test="IsActive='true'">
                        <xsl:attribute name='class'>
                            <xsl:text>menu-item active</xsl:text>
                        </xsl:attribute>
                    </xsl:if>
                    <a class="menu-link">
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
                </li>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template match='Zone' mode="Zone2">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name='class'>
                    <xsl:text>active</xsl:text>
                </xsl:attribute>
            </xsl:if>
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
        </li>
    </xsl:template>
</xsl:stylesheet>