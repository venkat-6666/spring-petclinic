@Library ("com.venkat.sharedlib") _
pipeline {
    agent {
        label "sujith-label1"
    }

    stages {
        stage('buliding'){
            steps{
                maven()
            }
        }
      stage("Docker Build"){
        steps{
            docker(my-java-app:latest)
        }
      }
      stage("Docker Run"){
        steps{
            runContainer("my-java-app:latest",8989,8080)
        }
      }
    }
}
