Declarative
```
pipeline {
    agent { label 'master' }
    stages {
        stage('Git Checkout') {
            steps {
                script {
                    git branch: 'main', credentialsId: 'Credential ID', url: 'https://github.com/username/repository.git'
                }
            }
        }
    }
}
```

Scripted
```
node('master') {
  stage('Checkout and run on agent'){
     checkout scm
   }
}
```

```
String branchName = env.BRANCH_NAME
String gitCredentials = "CREDENTIAL_ID"
String repoUrl = "https://github.com/username/repository.git"

node {
  stage('Checkout') {
      sh 'mkdir -p build'
      echo 'Cloning from (branch: "' + branchName + '" )'
      dir('build') {
          git branch: branchName, credentialsId: gitCredentials, url: repoUrl
      }     
  }       
}
```
