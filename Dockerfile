FROM justb4/jmeter:latest

# Copy the test plan into the container
COPY jmeter/test-plan.jmx /jmeter/test-plan.jmx

# Set the default command to run the JMeter test
CMD ["-n", "-t", "/jmeter/test-plan.jmx", "-l", "/results/results.jtl"]
