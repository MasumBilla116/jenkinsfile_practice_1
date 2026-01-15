pipeline{
    agent any

    stages{

        stage("git Clone"){
            steps{
                git "https://github.com/MasumBilla116/jenkinsfile_practice_1"
            }
        }

        stage("Install"){
            steps{
                bat "npm install"
            }
        }

        stage("Build"){
            steps{
                bat "npm run build"
            }
        }

        stage("Deploy"){
            steps{
                echo "Deploy is success....."
            }
        }
    }

    post{
        always{
            cleanWs()
        }
        success{
            echo "Deployment is success"
        }
        failure{
            echo "Build is fail"
        }
    }
}