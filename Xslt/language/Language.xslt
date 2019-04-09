<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />

    <xsl:template match="/">
        <div class="language">
            <a class="sub-logo" href="/">
                <img src="/Data/Sites/1/media/default/img/logo.png" alt=""/>
            </a>
            <xsl:apply-templates select="/LanguageList/Language" mode="Active"></xsl:apply-templates>
            <div class="btn-close-menu">
                <div class="mdi-close"></div>
            </div>
            <ul class="dropdown-menu">
                <xsl:apply-templates select="/LanguageList/Language" mode="Dropdown"></xsl:apply-templates>
            </ul>
        </div>
    </xsl:template>

    <xsl:template match="Language" mode="Active">
        <xsl:if test="IsActive='true'">
            <span class="dropdown">
                <xsl:value-of disable-output-escaping='yes' select='Title'></xsl:value-of>
            </span>
        </xsl:if>
    </xsl:template>

    <xsl:template match='Language' mode="Dropdown">
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