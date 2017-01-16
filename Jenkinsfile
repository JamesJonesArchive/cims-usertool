node('master') {
    env.PATH = "/usr/local/bin:${env.JENKINS_HOME}/bin:/usr/local/bin:${env.PATH}"
    checkout scm
    stage('Build CIMS usertool') {
        sh "vagrant halt --force || true"
        sh "vagrant global-status --prune || true"
        sh "vagrant destroy usertoolvm --force || true"
        sh "VBoxManage controlvm usertoolvm poweroff || true"
        sh "VBoxManage unregistervm usertoolvm --delete || true"
        sh "rm -Rf '${env.JENKINS_HOME}/VirtualBox VMs/usertoolvm/'"
        sh "vagrant up --provision --provider virtualbox"
        sh "vagrant halt --force || true"
        sh "vagrant global-status --prune || true"
        sh "vagrant destroy usertoolvm --force || true"
        sh "VBoxManage controlvm usertoolvm poweroff || true"
        sh "VBoxManage unregistervm usertoolvm --delete || true"
        sh "rm -Rf '${env.JENKINS_HOME}/VirtualBox VMs/usertoolvm/'"
        // sh "ansible-playbook -i 'localhost,' -c local --vault-password-file=${env.USF_ANSIBLE_VAULT_KEY} ansible/playbook.yml --extra-vars 'java_home=${env.JAVA_HOME} package_revision=${env.PACKAGE_REVISION}' -t Visor -vvv"
        // stash name: "imageservicerpm", includes: "ImageService/build/distributions/ImageService*.rpm"
    }
    stage('Archive RPM') {
        archiveArtifacts artifacts: 'bin/cims*.rpm'
    }
}

    