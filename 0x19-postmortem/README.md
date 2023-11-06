``` This report is based on 0x0D. Web stack debugging #0```
<h1>Incident Postmortem: Apache Service Not Running in Docker Container</h1>
<h5><b>Incident Summary:</h5></b>
<p>On [27-9-2023:10.30am], an incident occurred during a debugging task where the objective
was to set up an Apache web server to return a page containing "Hello Holberton"
when querying the root of the container. The incident was related to the Apache service
not running within the Docker container, causing a "curl: (52) Empty reply from server" error.<p>

<h5><b>Incident Timeline:</h5></b>
<ol>
<li>[27-9-2023:10.30am]: The incident occurred while attempting to test the Apache web server setup by running a "curl" command to query the container at port 8080.</li>
<li>[27-9-2023:10.35am]: The "curl" command returned an error: "curl: (52) Empty reply from server," indicating that no response was received</li>
<li>[27-9-2023:10.40am]: A decision was made to investigate the issue by connecting to the specific Docker container to check the status of the Apache service.</li>
</ol>

<h5><b>Incident Analysis:</h5></b>
<p>Root Cause: The root cause of the incident was determined to be the Apache service not running within the Docker container.</p>

<h5><b>Resolution Steps:</h5></b>
