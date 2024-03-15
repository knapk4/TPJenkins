node{
  def app
  def registryProjet='anthonyk46/jenkins'
  def IMAGE="${registryProjet}:version-${env.BUILD_ID}"

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("$IMAGE", '.')
    }

    stage('Test image') {
    docker.image("${IMAGE}").withRun("--name test-${BUILD_ID} -p 80:80") { c ->
        sh 'docker ps -a'

         }
    }

    stage('Push image') {
        // Authentification auprès du registre Docker, si nécessaire
        // docker.withRegistry('https://monregistre.example.com/', 'credentials-id')

        // Push de l'image vers le registre Docker
        app.push()
    }
}
