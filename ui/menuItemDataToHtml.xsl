<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" indent="yes" omit-xml-declaration="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title></title>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
			</head>
			<body>
				<div style="text-align:center; text-decoration:underline; font-style:italic; line-height:2em;">
					<xsl:value-of select="//desc"/>
				</div>
				<div style="text-align:right; font-size:0.6em;">
					<xsl:value-of select="//date"/>
				</div>
				<table border="1" width="100%">
					<tr>
						<th>Type</th>
						<th>Name</th>
						<th>Code</th>
					</tr>
					<xsl:for-each select="//menu">
						<tr>
							<td>
								<xsl:if test="@type = 'Women'">
									<span style="color:red;">
										<xsl:value-of select="@type"/>
									</span>
								</xsl:if>
								<xsl:if test="@type = 'Men'">
									<span style="color:blue;">
										<xsl:value-of select="@type"/>
									</span>
								</xsl:if>
							</td>
							<td>
								<xsl:value-of select="@name"/>
							</td>
							<td>
								<xsl:value-of select="@code"/>
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
