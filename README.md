# Configuration
1) Clone the repository
Clone the project somewhere where it belongs according to you, but remember when you have cloned it !
I suggest you to clone it where your .bashrc is.
```
cd ~

git clone https://github.com/AntoineP83/projects-installers
```

2) .bashrc
Add this line in your .bashrc.
```
source projects-installers/alias.sh
```

Pay attention to change the path accordingly to your local clone of the repository.

# Usage
This package can install pre-configured ready-to-use projects

The main command to use the package is 
```
projects-installers
```

## Wordpress (or wp)
Using the following command, you create a wordpress reposity with a full ready-to-use docker stack with :
- phpmyadmin
- mariadb
- wordpress
On the latest versions each time you use this command :
```
projects-installers wordpress my-wordpress-project
```
or 
```
projects-installers wp my-wordpress-project
```