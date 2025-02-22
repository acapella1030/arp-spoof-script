<h1>ARP Spoofing Script</h1>

<h2>Description</h2>
<p>
  This is a Bash script for performing an ARP spoofing attack using <code>arpspoof</code>. It allows you to intercept network traffic by sending fake ARP replies to a target machine.
</p>

<p><strong>Disclaimer:</strong> This script is for educational and security testing purposes only. Unauthorized use on networks you do not own or have explicit permission to test is illegal.</p>

<h2>Requirements</h2>
<ul>
  <li>Linux-based system (Tested on Kali Linux)</li>
  <li><code>dsniff</code> package (Provides <code>arpspoof</code> tool)</li>
  <li>Root privileges</li>
</ul>

<h2>Installation</h2>
<pre>
  <code>git clone git@github.com:yourusername/arp-spoof-script.git</code>
  <code>cd arp-spoof-script</code>

  <code>chmod +x script.sh</code>
</pre>

<h2>Usage</h2>
<p>Run the script:</p>
<pre>
  <code>sudo ./script.sh</code>
</pre>
<p>Enter the required inputs when prompted:</p>
<ul>
  <li>Network interface (e.g., eth0, wlan0)</li>
  <li>Target IP (IP of the victim device)</li>
</ul>
<p>The script will retrieve the network gateway automatically and start the ARP spoofing attack.</p>

<h3>Example</h3>
<pre>
  <code>sudo ./script.sh</code>
  <code>Enter the network interface to analyze: wlan0</code>
  <code>Enter the target IP: 192.168.1.100</code>
</pre>

<h2>Stopping the Attack</h2>
<p>To stop the ARP spoofing attack, press <strong>CTRL+C</strong>.</p>

<h2>Contact</h2>
<p>For any inquiries or contributions, feel free to reach out!</p>

<ul>
  <li>Author: acapella1030</li>
  <li>GitHub: <a href="https://github.com/acapella1030" target="_blank">acapella1030</a></li>
</ul>