pipeline{
    agent any
    stages{
        stage('config'){
            steps{
                sh 'ruby --version'
                // sh 'gem install bundler'
                // sh 'bundle install'
            }
        }
        stage('rubocop'){
            steps{
                sh 'rubocop'
            }
        }
        stage('deploy'){
            steps{
                sh 'git checkout master'
                sh 'git merge origin/teste'
            }
        }
    }
}
