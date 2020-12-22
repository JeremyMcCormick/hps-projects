Wrapper scripts for running the online recon can be installed from hps-java using:

    cd online-recon && mvn install -DassembleDirectory=/path/to/here -DskipTests -DuseWildcardClassPath

This will create a bin dir with the scripts for conveniently running the online recon components, as well as a 'repo' directory with all the required jar files.

You can add this directory to your path so that the scripts are easily accessible from the shell.
