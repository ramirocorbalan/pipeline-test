pipeline {
    agent any
    environment {
        SERVER = "parametro1"
        SERVICE = "parametro1"
        SERVICE_FOLDER = "folder"
        BUILD = "build"
        FILE_TO_EXCLUDE = "*.config appsettings.json"
        BUILD_FOLDER = "\\nbsf000des01\PaseProduccion\2022\CuentasBEE"
    }
    stages { 
        stage('STOP Service') {
            steps {
                /*argumentos para stop-service\
                $SERVER = $args[0]
                $SERVICE = $args[1]
                */
                powershell("c:\\temp\\scripts\\stop-service.ps1 '${SERVER}' '${SERVICE}'")
            }
        }
    }
    stages { 
        stage('Backup Service Files') {
            steps {
                /*argumentos para backup-folder
                $SERVER = $args[0]
                $SERVICE = $args[1]
                $SERVICE_FOLDER = $args[2]
                $BUILD = $args[3]
                */
                //powershell("c:\\temp\\scripts\\backup-folder.ps1 '${SERVER}' '${SERVICE}'")
            }
        }
    }
    stages { 
        stage('Copy Service Files') {
            steps {
                /*
                $SERVER = $args[0]
                $SERVICE = $args[1]
                $SERVICE_FOLDER = $args[2]
                $BUILD = $args[3]
                $FILE_TO_EXCLUDE = $args[4]
                $BUILD_FOLDER = $args[5]
                */
                //powershell("c:\\temp\\scripts\\update-files.ps1 '${SERVER}' '${SERVICE}'")
            }
        }
    }
    stages { 
        stage('START Service') {
            steps {
                /*argumentos para start-service\
                $SERVER = $args[0]
                $SERVICE = $args[1]
                */
                powershell("c:\\temp\\scripts\\start-service.ps1 '${SERVER}' '${SERVICE}'")
            }
        }
    }
}