pipeline{
    agent none

   stages{
    stage('Build-stage -node -1a'){
        agent{
            label 'node-1a-label-1a'
        }
        echo "hello sujith how r u"
        echo "this  is building stage"
        sh "hostname -i"

    }
    stage(compiling -node-1b){
        agent{
            label 'node-1b-label-1b'
        }
        echo "Running on label node-1b"
        sh 'hostname -i'

    }
    stage(executing-stage -node-1c){
        agent{
            label 'node-1c-label-1c'
        }
        echo "This is on executing stage"
        sh 'hostname -i'

    }
   }
}
