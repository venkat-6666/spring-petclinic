pipeline{
    agent any
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
