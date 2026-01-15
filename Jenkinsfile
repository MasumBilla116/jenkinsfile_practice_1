pipeline {
    agent any

    environment {
        NODE_ENV = "production"
        APP_NAME = "jenkinsfile_practice_1"
        DOCKER_IMAGE = "masumbilla116/jenkinsfile_practice_1"
    }

    stages {

        stage("Init Process") {
            steps {
                echo "Init Process.............. "
            }
        }

        stage("GIT Clone") {
            steps {
                git branch: "main",
                    url: "https://github.com/MasumBilla116/jenkinsfile_practice_1"
            }
        }

        stage("Docker Build") {
            steps {
                bat "docker build -t %DOCKER_IMAGE% ."
            }
        }

        stage("Docker Run (Deploy)") {
            steps {
                bat """
                docker stop %APP_NAME% || exit 0
                docker rm %APP_NAME% || exit 0
                docker run -d -p 3000:3000 --name %APP_NAME% %DOCKER_IMAGE%
                """
            }
        }
    }

    post {
        always {
            cleanWs()
        }
        success {
            echo "Docker Deployment Success ✅"
        }
        failure {
            echo "Docker Deployment Failed ❌"
        }
    }
}



// pipeline {
//     agent any

//     environment{
//         NODE_ENV = "production"
//         APP_NAME = "jenkinsfile_practice_1" 
//     }

//     stages {

//          stage("Init Process"){
//             steps{
//                 echo "Init Process.............."
//             }
//         }

//         stage("GIT Clone"){
//             steps{
//                  git branch: "main", url:"https://github.com/MasumBilla116/jenkinsfile_practice_1"
//             }
//         }

//         stage("Install") {
//             steps {
//                 bat "npm install"
//             }
//         }

//         stage("Build") {
//             steps {
//                 bat "npm run build"
//             }
//         }

//         stage("Deploy") {
//             steps {
//                 echo "Deploy is success....."
//             }
//         }
//     }

//     post {
//         always {
//             cleanWs()
//         }
//         success {
//             echo "Deployment is success"
//         }
//         failure {
//             echo "Build is fail"
//         }
//     }
// }
