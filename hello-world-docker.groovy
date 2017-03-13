def project = 'docker-hello-world'
def branchApi = new URL("https://github.com/mbudzinski/${project}")
def branchName = "master"

job("${project}") {
  scm {
      git("git://github.com/mbudzinski/{project}.git", branchName)
  }
  steps {
      maven('clean package')
  }
}
