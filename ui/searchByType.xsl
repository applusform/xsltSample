<?xml version="1.0" encoding="UTF-8"?>
<!--
	Created by ApplusForm.com on 2013.8.6

	Permission is granted to copy, distribute, modify under the terms of ApplusForm License.

	Copyright (C) 2013 ApplusForm.com All rights reserved.
-->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
	<xsl:param name="SearchType" select="'Women'"/>

	<xsl:template match="@* | node()">
		<xsl:copy>
			<xsl:apply-templates select="@* | node()"/>
		</xsl:copy>
	</xsl:template>

	<xsl:template match="menus">
		<items>
			<xsl:for-each select="menu[@type = $SearchType]">
				<xsl:sort select="@name"/>
				<xsl:copy>
					<xsl:apply-templates select="@* | node()"/>
				</xsl:copy>
			</xsl:for-each>
		</items>
	</xsl:template>

</xsl:stylesheet>
