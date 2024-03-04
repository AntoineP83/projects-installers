echo -e "namespace \e[33m\"projects-installers\"\e[0m has been loaded ; Type\e[36m \"projects-installers help\" \e[0mto display all the available commands \n";

proejcts-installers() {
    case $1 in 
        "wordpress" | "wp")
            echo "Installing WP project type"
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