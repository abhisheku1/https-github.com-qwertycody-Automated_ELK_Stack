#!/bin/bash
echo "**************************************************************************************************************************"
echo "SCRIPT FOR CDAC WEBSIEM2 BY  ABHISHEK UPADHYAY"
echo "Loading Please wait"
echo "**************************************************************************************************************************"
sleep 7
echo "**************************************************************************************************************************"

elk() {
    #Installing curl
    apt install curl
    # resynchronize the package index files from their sources.
 echo "**************************************************************************************************************************"
    apt-get update
    # Downloading  package of logstash
# NOTE :-GPG key For 22.0 Version  and above 
    curl -fsSL https://artifacts.elastic.co/GPG-KEY-elasticsearch |  gpg --dearmor -o /usr/share/keyrings/elastic.gpg
   
#echo GPG------------------------------------
    echo "deb [signed-by=/usr/share/keyrings/elastic.gpg] https://artifacts.elastic.co/packages/7.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-7.x.list    
   
     apt install elasticsearch
     systemctl daemon-reload
    # Install logstash package
     apt install logstash
     systemctl start logstash
     systemctl enable logstash
    # Downloading debian package of elasticsearch
   
    # Install debian package of elasticsearch
    
   
    
}
echo "**************************************************************************************************************************"
echo "**************************************************************************************************************************"
echo "**************************************************************************************************************************"
echo "**************************************************************************************************************************"
echo "------"
echo "------"
echo "------"
echo "------"
echo "------"
echo "------"
echo "------"
rpm_elk() {
   
  
    # Starting The Services
     systemctl enable logstash
     systemctl start logstash
    systemctl enable elasticsearch
     systemctl start elasticsearch
}

# Installing ELK Stack
if [ "$(grep -Ei 'debian|buntu|mint' /etc/*release)" ]
    then
        echo " It's a Linux based system"
        elk
        rpm_elk
else
    echo "This script doesn't support Elasticsearch & Logstash installation on this OS."
fi
sleep 7

echo "SCRIPT FOR CDAC WEBSIEM2 BY  ABHISHEK UPADHYAY"
echo "**************************************************************************************************************************"
echo "Thanx for waiting"
echo "**************************************************************************************************************************"