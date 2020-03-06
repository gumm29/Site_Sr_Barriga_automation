pipeline{
    agent any
    stages{
        stage('config'){
            steps{
                sh 'ruby --version'
                sh 'bundle install'
            }
        }
        stage('rubocop'){
            steps{
                sh 'rubocop'
            }
        }
    }
}
