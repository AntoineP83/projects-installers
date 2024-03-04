echo -e "namespace \e[33m\"projects-installers\"\e[0m has been loaded ; Type\e[36m \"projects-installers help\" \e[0mto display all the available commands \n";
scriptDirectory=$(dirname "${BASH_SOURCE[0]}")
projects-installers() {
    case $1 in 
        "wordpress" | "wp")
            if [ -z "$2" ]; then
                echo "Expected a project name"
                return 1
            fi
            projectDirectory=$(grep -E '"projectDirectory"\s*:' $scriptDirectory/config.json | sed 's/.*: *"\(.*\)".*/\1/')
            whereToInstall="$projectDirectory/$2"
            echo "Installing WP project type in $whereToInstall"
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