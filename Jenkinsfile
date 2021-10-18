pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }
    agent { any { image 'maven:3.3.3' } }
   /* environment {
        NEXUS_VERSION="nexus3"
        NEXUS_PROTOCOL="http"
        NEXUS_CREDS = credentials('Nexus')
        NEXUS_URL="127.0.0.1:8081"
        NEXUS_REPOSITORY = "maven-snapshots"
        //NEXUS_USER = "${NEXUS_CREDS_USR}"
        //NEXUS_PASSWORD = "${NEXUS_CREDS_PSW}"
  }*/
    
      environment { 

        registry = "asunder123/springbootrest" 

        registryCredential = 'asunder123' 

        dockerImage = '' 

    }
    
   

    stages {
        stage('build') {
            steps {
               sh 'mvn clean install'
            }
        }
        
        stage('predeployment-test')
        {
            steps { 
              
               //sh  'ls -ltr'
               sh './testjar.sh'
               sh  'mvn  clean compile package'
            }
            
        }
            
             stage("publish to nexus") {
            steps {
                sh 'curl http://localhost:8081/repository/maven-releases/'
                //nexusArtifactUploader artifacts: [[artifactId: 'spring-boot-restcontroller-example', classifier:'debug', file: '/var/lib/jenkins/workspace/springpipe/target/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar', type: 'jar']],credentialsId: 'Nexus', groupId: 'es.macero.dev', nexusUrl: '127.0.0.1:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-releases', version: '0.0.1-SNAPSHOT'
                nexusArtifactUploader artifacts: [[artifactId: 'spring-boot-restcontroller-example', classifier:'debug', file: '/var/lib/jenkins/workspace/springpipe/target/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar', type: 'jar']],credentialsId: 'Nexus', groupId: 'es.macero.dev', nexusUrl: '127.0.0.1:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-snapshots', version: '0.0.1-SNAPSHOT'
                nexusArtifactUploader artifacts: [[artifactId: 'spring-boot-restcontroller-example', classifier:'debug', file: '/var/lib/jenkins/workspace/springpipe/target/spring-boot-restcontroller-example-0.0.1-SNAPSHOT.jar', type: 'jar']],credentialsId: 'Nexus', groupId: 'es.macero.dev', nexusUrl: '127.0.0.1:8081/', nexusVersion: 'nexus3', protocol: 'http', repository: 'maven-releases', version: '3.3.3'
                }
            }
        
        stage("fetch artifact from nexus") {
        steps{
        
        sh "wget --user=admin --password=admin123 http://localhost:8081/repository/maven-releases/es/macero/dev/spring-boot-restcontroller-example/3.3.3/spring-boot-restcontroller-example-3.3.3-debug.jar"
        sh "mv spring-boot-restcontroller-example-3.3.3-debug.jar devops.jar"
        //sh "docker push asunder123/springbootrest:tagname"
            
        
        }
            
            
    }
        
         
            }
                
 
        }
