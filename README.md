# SoapUI reporting example
When running this Maven project with goal `verify` it runs the test suites in the SoapUI sample project (as distributed with SoapUI 5.5.0) and creates test reports in directory `target\soapui\tests` (both in XML and HTML format). When one or more test cases fail, the Maven build also fails.
