pipeline {
    agent none
    stages {
        stage('Test') {
            // agent { dockerfile true }
            agent {
                dockerfile {
                    filename 'Dockerfile'
                    lable 'master'
                    args "-v /var/lib/jenkins/workspace/TF-pipeline:/tools"
                }
            }
            steps {
                echo "I'm executing in node: ${env.NODE_NAME}"
                sh 'node --version'
                sh 'pwd'
                // sh 'svn --version'
            }
        }
    }
}


// pipeline {
//     agent none
 
//     stages {
//         stage("Checkout") {
//             agent {
//                 label "master"
//             }
//             steps {
//                 git branch: 'main', credentialsId: 'Github', url: 'https://github.com/blackbow47/TF-test.git'
//             }
//         }

//         stage("Build") {
//                 agent {
//                    dockerfile {
//                    filename 'Dockerfile'  
//                    label 'master'
//                 //    args "-v /home/user/maven:/var/maven" 
//                }
//             }   
//             steps {
//                 echo "I'm executing in node: ${env.NODE_NAME}"
//                 sh 'node --version'
//                 sh 'svn --version'
//             }
//         }
//     }
// }