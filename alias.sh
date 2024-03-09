echo -e "namespace \e[33m\"projects-installers\"\e[0m has been loaded ; Type\e[36m \"projects-installers help\" \e[0mto display all the available commands \n";
scriptDirectory=$(dirname "${BASH_SOURCE[0]}")

scriptRealDirectory="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "Le script se trouve dans le répertoire : $scriptRealDirectory"
projects-installers() {
    case $1 in 
        "wordpress" | "wp")
            if [ -z "$2" ]; then
                echo "Expected a project name"
                return 1
            fi

            ###> INITIALIZATION
            echo "Installing WP project type in $2"
            mkdir $2
            cd $2
            cp "$scriptRealDirectory/wordpress/docker-compose.yml" .
            echo "WP project successfully initialized"
            echo ""
            ###< INITIALIZATION
            
            ###> OPTIONS DEFINITION
            doDockerComposeUp=true
            ###< OPTIONS DEFINITION

            ###> OPTIONS EXECUTION
            echo "Docker execution"
            if [ "$doDockerComposeUp" = true ]; then
                docker-compose up -d
            fi
            ###< OPTIONS EXECUTION
            ;;
        "second")
            echo "second case"
            ;;
        *)
            echo "other cases"
            ;;
    esac
}
