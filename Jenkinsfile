pipeline {
    agent {
        label 'docker-slave'
    }
    stages {
        stage('Build') {
            steps {
                script {
                    // Correct syntax: Pass the image name as a string.
                    // The second optional argument is the build context directory.
                    // If your Dockerfile is in the root, you can use '.'
                    def myImage = docker.build('myapp:latest', '.')

                    echo "Successfully built ${myImage.id}"
                }
            }
        }
    }
}
