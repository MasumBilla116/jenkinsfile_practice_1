pipeline {
    agent any

    environment{
        NODE_ENV = "production"
        APP_NAME = "jenkinsfile_practice_1" 
    }

    stages {

         stage("Init Process"){
            steps{
                echo "Init Process.............."
            }
        }

        stage("Install"){
            steps{
                 git branch: "main", url:"https://github.com/MasumBilla116/jenkinsfile_practice_1"
            }
        }

        stage("Install") {
            steps {
                bat "npm install"
            }
        }

        stage("Build") {
            steps {
                bat "npm run build"
            }
        }

        stage("Deploy") {
            steps {
                echo "Deploy is success....."
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        success {
            echo "Deployment is success"
        }
        failure {
            echo "Build is fail"
        }
    }
}
