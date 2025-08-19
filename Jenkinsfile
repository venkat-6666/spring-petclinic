pipeline {
    agent {
        label 'docker-slave'
    }
    stages {
        stage('Build') {
    steps {
        script {
            // Correct syntax: The first argument is the image name and tag.
            // The second argument is the build context ('.' for the current directory).
            def myImage = docker.build('myapp:latest', '.')
            
            echo "Successfully built image: ${myImage.id}"
        }
    }
        }
    }
}
