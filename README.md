	1. Create script 
		a. Nano Scanningscript.sh
	2. Add scripting commands
		a. arpscan - l
			i. Script needs to be saved in xml format.
		b. Nmap
			i. The scan must input the arpscan.xml file
		c. Nikto
			i. Need to parse the IP so it can be feed into the command
			ii. The scan must input the arpscan.xml file
			iii. Open a new terminal & name the header "Nikto"
		d. Wpscan
			i. The scan must input the arpscan.xml file
			ii. Open a new terminal & name the header "Wpscan"
		e. Ftp scan
			i. The scan must input the arpscan.xml file
			ii. Open a new terminal & name the header "FTP"
			iii. Needs to parse the IP & port
		f. Open web browser
			i. The scan must input the niktoscan.xml file
			ii. The browser should open up to robots.txt
			iii. login-admin.php, etc.
