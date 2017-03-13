def project = 'docker-hello-world'
def branchApi = new URL("https://github.com/mbudzinski/${project}")
def branchName = "master"

job("${project}") {
  scm {
      git("git://github.com/mbudzinski/${project}.git", branchName)
  }
  triggers {
     scm("*/5 * * * *")
  }
  steps {
      maven('clean package spring-boot:run')
  }
}
