<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:aud="http://www.oracle.com/soa/fp/governance/auditor">
	<!-- Root template -->
	<xsl:template match="/">
		<sqale>
			<chc>
				<key>REUSABILITY</key>
				<name>Reusability</name>
				<chc>
					<key>MODULARITY</key>
					<name>Modularity</name>
				</chc>
				<chc>
					<key>TRANSPORTABILITY</key>
					<name>Transportability</name>
				</chc>
			</chc>

			<chc>
				<key>PORTABILITY</key>
				<name>Portability</name>
				<chc>
					<key>COMPILER_RELATED_PORTABILITY</key>
					<name>Compiler</name>
				</chc>
				<chc>
					<key>HARDWARE_RELATED_PORTABILITY</key>
					<name>Hardware</name>
				</chc>
				<chc>
					<key>LANGUAGE_RELATED_PORTABILITY</key>
					<name>Language</name>
				</chc>
				<chc>
					<key>OS_RELATED_PORTABILITY</key>
					<name>OS</name>
				</chc>
				<chc>
					<key>SOFTWARE_RELATED_PORTABILITY</key>
					<name>Software</name>
				</chc>
				<chc>
					<key>TIME_ZONE_RELATED_PORTABILITY</key>
					<name>Time zone</name>
				</chc>
			</chc>
			<chc>
				<key>MAINTAINABILITY</key>
				<name>Maintainability</name>
				<chc>
					<key>READABILITY</key>
					<name>Readability</name>

					<xsl:for-each select="//aud:Assertion">
						<chc>
							<rule-repo>cci</rule-repo>
							<rule-key>com.oracle.cci.<xsl:value-of select="@name"/>
							</rule-key>
							<prop>
								<key>remediationFunction</key>
								<txt>linear</txt>
							</prop>
							<prop>
								<key>remediationFactor</key>
								<val>5.0</val>
								<txt>mn</txt>
							</prop>
							<prop>
								<key>offset</key>
								<val>0.0</val>
								<txt>mn</txt>
							</prop>
						</chc>
					</xsl:for-each>
				</chc>
				<chc>
					<key>UNDERSTANDABILITY</key>
					<name>Understandability</name>
				</chc>
			</chc>
			<chc>
				<key>SECURITY</key>
				<name>Security</name>
				<chc>
					<key>API_ABUSE</key>
					<name>API abuse</name>
				</chc>
				<chc>
					<key>ERRORS</key>
					<name>Errors</name>
				</chc>
				<chc>
					<key>INPUT_VALIDATION_AND_REPRESENTATION</key>
					<name>Input validation and representation</name>
				</chc>
				<chc>
					<key>SECURITY_FEATURES</key>
					<name>Security features</name>
				</chc>
			</chc>
			<chc>
				<key>EFFICIENCY</key>
				<name>Efficiency</name>
				<chc>
					<key>MEMORY_EFFICIENCY</key>
					<name>Memory use</name>
				</chc>
				<chc>
					<key>CPU_EFFICIENCY</key>
					<name>Processor use</name>
				</chc>
			</chc>
			<chc>
				<key>CHANGEABILITY</key>
				<name>Changeability</name>
				<chc>
					<key>ARCHITECTURE_CHANGEABILITY</key>
					<name>Architecture</name>
				</chc>
				<chc>
					<key>DATA_CHANGEABILITY</key>
					<name>Data</name>
				</chc>
				<chc>
					<key>LOGIC_CHANGEABILITY</key>
					<name>Logic</name>
				</chc>
			</chc>
			<chc>
				<key>RELIABILITY</key>
				<name>Reliability</name>
				<chc>
					<key>ARCHITECTURE_RELIABILITY</key>
					<name>Architecture</name>
				</chc>
				<chc>
					<key>DATA_RELIABILITY</key>
					<name>Data</name>
				</chc>
				<chc>
					<key>EXCEPTION_HANDLING</key>
					<name>Exception handling</name>
				</chc>
				<chc>
					<key>FAULT_TOLERANCE</key>
					<name>Fault tolerance</name>
				</chc>
				<chc>
					<key>INSTRUCTION_RELIABILITY</key>
					<name>Instruction</name>
				</chc>
				<chc>
					<key>LOGIC_RELIABILITY</key>
					<name>Logic</name>
				</chc>
				<chc>
					<key>RESOURCE_RELIABILITY</key>
					<name>Resource</name>
				</chc>
				<chc>
					<key>SYNCHRONIZATION_RELIABILITY</key>
					<name>Synchronization</name>
				</chc>
				<chc>
					<key>UNIT_TESTS</key>
					<name>Unit tests coverage</name>
				</chc>
			</chc>
			<chc>
				<key>TESTABILITY</key>
				<name>Testability</name>
				<chc>
					<key>INTEGRATION_TESTABILITY</key>
					<name>Integration level</name>
				</chc>
				<chc>
					<key>UNIT_TESTABILITY</key>
					<name>Unit level</name>
				</chc>
			</chc>
		</sqale>
	</xsl:template>
</xsl:stylesheet>