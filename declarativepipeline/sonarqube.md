## Sonarqube Analysis and Quality gate
 create credentials in CI tool

```
         stage("Sonarqube Analysis "){
            steps{
                withSonarQubeEnv('sonar-server',credentialsId: 'Sonar-token') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=<project-name> \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=<project-key> '''
                }
            }
        }
        stage("quality gate"){
           steps {
              timeout(time: 1, unit: 'MINUTES') {
                     waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-token' 
                    }
                } 
        } 
```
