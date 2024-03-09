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
            echo "$(pwd)"
            echo "Installing WP project type in $2"
            mkdir $2
            cp "$scriptRealDirectory/wordpress/docker-compose.yml" $2
            echo "WP project successfully initialized"

            ;;
        "second")
            echo "second case"
            ;;
        "third" | "fourth")
            echo "third or fourth case"
            ;;
        *)
            echo "other cases"
            ;;
    esac
}

alias pi="projects-installers"