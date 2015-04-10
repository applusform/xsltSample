<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="no"/>
	<xsl:template match="/">
		<MOML>
			<THEMES>
				<THEME id="item" margin="1" img="white" padding="4,1"/>
				<THEME id="head" parent="item" fontStyle="bold" textAlign="center"/>
				<THEME id="row" layout="290,20" align="linear" />
			</THEMES>
			<UILAYOUT portrait="300,200" landscape="300,200">
				<WINDOW id="childScroll" layout="0,0,300,200" align="linear:vertical" scroll="vertical" padding="5">
					<LABEL layout="290,30" text="{//desc}" fontStyle="italic|underline" textAlign="bottom|center"/>
					<LABEL layout="290,10" text="{//date}" fontSize="8" textAlign="right"/>
					<WINDOW themeId="row" >
						<LABEL themeId="head" layout="78,18" text="Type" />
						<LABEL themeId="head" layout="158,18" text="Name" />
						<LABEL themeId="head" layout="48,18" text="Code"/>
					</WINDOW>
					<xsl:for-each select="//menu">
						<WINDOW themeId="row">
							<xsl:if test="@type = 'Women'">
								<LABEL themeId="item" layout="78,18" text="{@type}" textColor="red"/>
							</xsl:if>
							<xsl:if test="@type = 'Men'">
								<LABEL themeId="item" layout="78,18" text="{@type}" textColor="blue"/>
							</xsl:if>
							<LABEL themeId="item" layout="158,18" text="{@name}" />
							<LABEL themeId="item" layout="48,18" text="{@code}" textColor="hotpink"/>
						</WINDOW>
					</xsl:for-each>
				</WINDOW>
			</UILAYOUT>
		</MOML>
	</xsl:template>
</xsl:stylesheet>
