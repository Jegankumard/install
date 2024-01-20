Maven - declarative
```
        stage('mvn compile'){
            steps{
                sh 'mvn clean compile'
            }
        }
        stage('mvn test'){
            steps{
                sh 'mvn test'
            }
        } 
        stage('mvn build'){
            steps{
                sh 'mvn clean install'
            }
        }  
```
