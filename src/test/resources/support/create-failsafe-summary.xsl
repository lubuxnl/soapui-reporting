<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<xsl:variable name="completed" select="sum(testsuites/testsuite/@tests)"/>
		<xsl:variable name="errors" select="sum(testsuites/testsuite/@errors)"/>
		<xsl:variable name="failures" select="sum(testsuites/testsuite/@failures)"/>
		<failsafe-summary timeout="false">
			<completed><xsl:value-of select="$completed"/></completed>
			<errors><xsl:value-of select="$errors"/></errors>
			<failures><xsl:value-of select="$failures"/></failures>
			<skipped>0</skipped>
			<failureMessage>
				<xsl:if test="$failures &gt; 0">
					<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
					<xsl:value-of select=".//failure[1]" disable-output-escaping="yes"/>
					<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
				</xsl:if>
			</failureMessage>
		</failsafe-summary>
	</xsl:template>
</xsl:stylesheet>
