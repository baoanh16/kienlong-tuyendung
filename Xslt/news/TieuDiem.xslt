<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version='1.0' xmlns:xsl='http://www.w3.org/1999/XSL/Transform' xmlns:msxsl='urn:schemas-microsoft-com:xslt'
 exclude-result-prefixes='msxsl'>
	<xsl:output method='html' indent='yes' />
	<xsl:template match='/'>
		<section class="canhcam-rh-6">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="head-title text-center">
							<h2>
								<xsl:value-of disable-output-escaping='yes' select='/NewsList/ZoneTitle'></xsl:value-of>
							</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select='/NewsList/News'></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match='News'>
		<div class="col-12 col-lg-4 pr-lg-0">
			<figure>
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
					<img class="w-100">
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
				</a>
				<figcaption>
					<h4>
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
						<xsl:value-of select='EditLink' disable-output-escaping='yes'></xsl:value-of>
					</h4>
					<p><span class="time">
						<xsl:value-of disable-output-escaping='yes' select='CreatedDD'></xsl:value-of>
						<xsl:text>.</xsl:text>
						<xsl:value-of disable-output-escaping='yes' select='CreatedMM'></xsl:value-of>
						<xsl:text>.</xsl:text>
						<xsl:value-of disable-output-escaping='yes' select='CreatedYYYY'></xsl:value-of>
					</span></p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>