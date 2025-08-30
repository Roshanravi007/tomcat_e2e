pipeline
{

agent {
  label 'server2'
}

parameters {
    choice choices: ['dev', 'prod'], name: 'select_environment'
}

environment{
    NAME = "srikanth"
}

stages{

    stage('build')
    {
        steps {
            
                sh 'mvn clean package -DskipTests=true'
           
        }

        

    }

    stage('test')
    { 
        parallel {
            stage('testA')
            {
                agent { label 'server2' }
                steps{
                    echo " This is test A"
                    sh "mvn test"
                }
                
            }
            stage('testB')
            {
                agent { label 'server2' }
                steps{
                echo "this is test B"
                sh "mvn test"
                }
            }
        }
        post {
        success {
             dir("target/")
            {
            stash name: "maven-build", includes: "*.war"
                 }
                 }
            }

    }

    stage('deploy_dev')
    {
        when { expression {params.select_environment == 'dev'}
        beforeAgent true}
        agent { label 'server2' }
        steps
        {
            dir("/var/www/html")
            {
                unstash "maven-build"
            }
            sh """
            cd /var/www/html/
            jar -xvf Example 0.0.1-SNAPSHOT.war
            """
        }
    }

    stage('deploy_prod')
    {
      when { expression {params.select_environment == 'prod'}
        beforeAgent true}
        agent { label 'ProdServer' }
        steps
        {
             timeout(time:5, unit:'DAYS'){
                input message: 'Deployment approved?'
             }
            dir("/var/www/html")
            {
                unstash "maven-build"
            }
            sh """
            cd /var/www/html/
            jar -xvf webapp.war
            """
        }  
    }

   

    
}

}