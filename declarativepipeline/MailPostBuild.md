post build sending mail

```
    post {
     always {
        emailext attachLog: true,
            subject: "'${currentBuild.result}'",
            body: "Project: ${env.JOB_NAME}<br/>" +
                "Build Number: ${env.BUILD_NUMBER}<br/>" +
                "URL: ${env.BUILD_URL}<br/>",
            to: 'mail@gmail.com',   #//change mail id
            attachmentsPattern: 'trivy.txt'
        }
    }
```
