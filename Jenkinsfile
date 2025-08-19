pipeline{
    agent {
        label 'docker-slave'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    docker.build(
                        image: 'myapp:latest',
                        file: 'Dockerfile',
                    )
                }
            }
        }
    }
}
