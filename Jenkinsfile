node
{
    stage('git checkout') 
    {
checkout([$class: 'GitSCM', 
branches: [[name: '*/master']],
doGenerateSubmoduleConfigurations: false, 
extensions: [],
submoduleCfg: [],
userRemoteConfigs: [[url:'https://github.com/kishorpatil1510/devopskishor.git']]])
    }

    stage('app build')
    {
	    sh 'mvn clean package'
    }
    stage ('archieve')
    {
        archiveArtifacts 'target/Helloworldwebapp.war'
    }
    
    input'Deploy to Prod Server?'
    stage ('deploy')
    {
       sh 'cp target/Helloworldwebapp.war /opt/apache-tomcat-8.5.33/webapps' 
    }
    
        mail bcc: '', 
        body: 'Test', 
        cc: '', 
        from: '', 
        replyTo: '', 
        subject: 'This is MERGE & PUSH Test to Remote Repository', 
        to: 'mail.kishor.1510@gmail.com'
}



