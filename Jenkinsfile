import groovy.json.JsonSlurperClassic 

@NonCPS
def jsonParse(def json) {
  new groovy.json.JsonSlurperClassic().parseText(json)
}

node {
  env.PATH = "/usr/local/bin:${env.JENKINS_HOME}/bin:${env.PATH}"
  checkout scm
  def cconfig = jsonParse(readFile('composer.json'))

}