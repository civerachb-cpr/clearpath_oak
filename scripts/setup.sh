#!/bin/bash

# install python api & dependencies
# see https://docs.luxonis.com/projects/api/en/latest/install/
sudo wget -qO- http://docs.luxonis.com/_static/install_dependencies.sh | bash
python3 -m pip install --extra-index-url https://artifacts.luxonis.com/artifactory/luxonis-python-snapshot-local/ depthai==2.0.0.1+4450dc3a7246f6d80f143c57db3f7f797f677882
