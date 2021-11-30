FROM sandeepalguri/jmeterqaopspluginimp
COPY 1.jmx /jmeter/1.jmx
COPY test.properties /jmeter/test.properties
COPY data.csv /jmeter/data.csv
