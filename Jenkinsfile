pipeline{
    agent any
    stages{
        stage('Build') {
            steps{
                echo "*********build the src code *********"
                sh "mvn clean package -DskipTests"
            }
        }
        stage('Test') {
            steps{
                echo "*********run the unit tests *********"
                sh ''' mvn clean verify sonar:sonar \
                         -Dsonar.projectKey=spring \
                         -Dsonar.host.url=http://34.55.114.215:9000 \
                         -Dsonar.login=sqp_85831cfcf94cbc6dcdb4e50d18f012b6ce4b8ce7 
                '''
            }
        }
    }
}
