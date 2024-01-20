## Docker build and push
 create credentials in CI tool

```
        stage("Docker Build & Push"){
            steps{
                script{
                   withDockerRegistry(credentialsId: 'docker-cred-id', toolName: 'docker'){   
                       sh "docker build -t <imagename> ."
                       sh "docker tag <imagename> <dockerRepository>/<imagename>:<tag>"
                       sh "docker push <dockerRepository>/<imagename>:<tag>"
                    }
                }
            }
        }
```
Deploy
```
        stage('Deploy to conatiner'){
            steps{
                sh 'docker run -d --name <container-name> -p <target-port>:<source-port> <dockerRepository>/<imagename>:<tag>'
            }
        }
```
