pipeline{
    agent any
    stages{
        stage('config'){
            steps{
                sh 'ruby --version'
                sh 'gem install bundler'
                sh 'bundler install'
            }
        }
        stage('rubocop'){
            steps{
                sh 'rubocop'
            }
        }
    }
}
