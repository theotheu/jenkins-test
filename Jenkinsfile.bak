node("docker") {
    docker.withRegistry('https://registry.hub.docker.com', 'theotheu') {
    
        git url: "https://github.com/theotheu/jenkins-test", credentialsId: 'theotheu'
    
        sh "git rev-parse HEAD > .git/commit-id"
        def commit_id = readFile('.git/commit-id').trim()
        println commit_id
    
        stage "build"
        def app = docker.build "jenkins-test"
    
        stage "publish"
        app.push 'master'
        app.push "${commit_id}"
    }
}
