#! /bin/sh

case "$(uname -s)" in
  Linux)
    echo 'Linux detected. Installing dependencies.'

    # GET perl and warrick's perl dependencies
    echo 'WARRICK: installing perl dependencies'
    apt-get install perl
    yum install perl
    ./perl_package_dep_installer.sh
  
    # GET curl and warrick's curl dependencies
    echo 'WARRICK: installing curl dependencies'
    apt-get install curl libcurl3 libcurl3-dev
    yum install curl

    # GET python and warrick's python dependencies
    echo 'WARRICK: installing python dependencies'
    apt-get install python
    yum install python
    ;;
  Darwin)
    echo 'Do macOS things'
    ;;
  *) #CYGWIN*|MINGW32*|MSYS|others
    echo 'Your operating system is not support.'
esac

echo 'WARRICK installation script complete'
