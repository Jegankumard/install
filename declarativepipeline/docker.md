## Docker build and push
 create credentials in CI tool

```
        stage("Docker Build & Push"){
            steps{
                script{
                   withDockerRegistry(credentialsId: 'docker-cred-id', toolName: 'docker'){   
                       sh "docker build -t <imagename> ."
                       sh "docker tag <imagename> <dockerRepository>/<imagename>:<tag>"
                       sh "docker push <dockerRepository>/<imagename>:<tag> "
                    }
                }
            }
        }
```
