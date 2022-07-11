pipeline {
    agent none
    stages {
        stage('Test') {
            agent { dockerfile true }
            // agent {
            //     dockerfile {
            //         filename 'Dockerfile'
            //         label 'master'
            //         args "-v /var/lib/jenkins/workspace/TF-pipeline:/tools"
            //     }
            // }
            steps {
                git branch: 'Testing_container', credentialsId: 'Github', url: 'https://github.com/blackbow47/TF-test.git'
                echo "I'm executing in node: ${env.NODE_NAME}"
                sh 'cat /proc/1/cgroup'
                sh '''
                    ls -ali / | sed '2!d' |awk {'print $1'}
                '''
                // sh 'node --version'
                sh 'sudo apt-get install wget'
                sh 'wget https://releases.hashicorp.com/terraform/0.12.21/terraform_0.12.21_linux_amd64.zip'
                sh 'unzip -o terraform_0.12.21_linux_amd64.zip && rm terraform_0.12.21_linux_amd64.zip'
                // sh 'apk add sudo'
                sh 'sudo mv terraform /usr/bin/terraform'
                sh 'terraform fmt'
                sh 'terraform init'
                sh 'terraform apply --auto-approve'
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