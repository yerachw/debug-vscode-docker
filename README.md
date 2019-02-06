This is an example using the python sitecustomize feature to enable ptvsd so that VSCode can remote debug a python app inside a docker container.
ptvsd is installed via the entry point. 
This could be optional based on an environment variable and the pip install of ptvsd could also be moved to the entrypoin.sh and out of requirements.txt
The same version of ptvsd needs to be installed on the host machine.
The Python: Remote Attach launch configuration must be used.