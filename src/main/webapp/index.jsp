<html>
<body>
<h1><font color='red'>Welcome to Ashok IT - Best Software Training Institute in India </font></h1>
<h2>Learn Here.. Lead Anywhere..!! </h2>

<a href="https://ashokitech.com/online-training-schedules">Click Here To See Ashok IT Training Schedules</a>
<h1> > Vinay MB:
Redhat

 yum update
 sudo yum install java-11-openjdk java-11-openjdk-devel -y
          sudo yum install wget
     sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
    (note: using above command add sudo before wget)
    sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
    (note: using above command add sudo before rpm)
     sudo yum install jenkins
     sudo systemctl start jenkins
     sudo systemctl enable jenkins
     sudo systemctl status jenkins
    (note: after running this command to exit from there enter ctrl+c)
    sudo yum install firewalld
    sudo systemctl enable firewalld
     sudo firewall-cmd --state
    
    sudo systemctl start firewalld
    sudo -E firewall-cmd --zone=public --add-port=8080/tcp --permanent
     sudo firewall-cmd --zone=public --add-service=http --permanent
     sudo firewall-cmd --reload
   (note: after this command go to EC2 > security > securirty group >inbound rules > Add rule > custom tcp port number 8080 ip (can we give any or select 0.0.0.0/0))
   
   after above step copy ec2 public ip and open in browser
   ex:44.212.75.251:8080(8080 is port number which is given in inbond custom tcp)
   
    sudo firewall-cmd --list-all
     ip a
    cat /var/lib/jenkins/secrets/initialAdminPassword
    
    
    
    
     stage("deploy") {
        sshagent(['ansible-ec2-user']) {
       sh "scp -o StrictHostKeyChecking=no /var/jenkins_home/workspace/hello_pipeline/target/01-maven-web-app.war ec2-user@172.31.5.90:/opt/tomcat/webapps/"
     sh "ssh ec2-user@172.31.5.90 /opt/tomcat/bin/shutdown.sh"
     sh "ssh  ec2-user@172.31.5.90 /opt/tomcat/bin/startup.sh"
    }
    }
   
   
   
   
   Jenkins git commit token password
   git token
   227947f9788a93aba2766edd1fabc3b9
  </h1>
</body>
</html>
