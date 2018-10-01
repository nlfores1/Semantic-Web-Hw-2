<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match ="/">
		<html>
			<head>
                <title/>
            </head>
			<body>
				<h2>UMBC FALL 2018 SCHEDULE</h2>
					<table align="center" style="width:100%" >
						<tr bgcolor="#9acd32">
							<th align="center"> Course </th>
							<th align="center"> Identifier </th>
							<th align="center"> Number </th>
							<th align="center"> Credits </th>
							<th align="center"> Prerequisites </th>
							<th align="center"> Description </th>
							<th align="center"> Class Number </th>
						</tr>
						<xsl:for-each select ="schedule/Course">
							<tr>
									
								<td><xsl:value-of select="title"/></td>
								<td><xsl:value-of select="identifier"/></td>
								<td><xsl:value-of select="number"/></td>
								<td><xsl:value-of select="credits"/></td>
								<td><xsl:value-of select="prerequisite"/></td>
								<td><xsl:value-of select="description"/></td>
								<td><xsl:value-of select="classNumber"/></td>
							</tr>
						</xsl:for-each>
					</table>
						
					<h2>Sections </h2>
					<table align="center" style="width:100%" >
						<tr bgcolor="##66a3ff">
							<th align="center"> Course </th>
							<th align="center"> Number </th>
							<th align="center"> Instructors </th>
							<th align="center"> Room </th>
							<th align="center"> Days </th>
							<th align="center"> Start Time </th>
							<th align="center"> End Time </th>
							<th align="center"> Status </th>
						</tr>
						<xsl:for-each select ="schedule/Course/section">
							<tr>
								<td>
									<xsl:value-of select="identifier"/>
									<xsl:value-of select="number"/>
								</td>
								<td><xsl:value-of select="number"/></td>
								<td><xsl:value-of select="instructor"/></td>
								<td><xsl:value-of select="room"/></td>
								<td><xsl:value-of select="days"/></td>
								<td><xsl:value-of select="startime"/></td>
								<td><xsl:value-of select="endtime"/></td>
								<td><xsl:value-of select="status"/></td>
							</tr>
						</xsl:for-each>
					</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
