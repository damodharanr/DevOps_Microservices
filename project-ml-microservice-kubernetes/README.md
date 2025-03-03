<include a CircleCI status badge, here>
[![CircleCI](https://circleci.com/gh/damodharanr/DevOps_Microservices/tree/master.svg?style=svg)](https://circleci.com/gh/damodharanr/DevOps_Microservices/tree/master)

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

### Project Files and Details:
1. app.py - python application file.
2. Makefile - make file to be used to  setup project. Make sure make command installed. use scoop to install make in windows
3. Dockerfile - Main docker file which contain container information
4. requirement.txt - given as input to Makefile to install dependencies for running app.py.
5. run_docker.sh,run_kubernetes.sh - shell script to run docker and kubernetes command.
6. upload_docker.sh - shell script is used to upload the docker image creating using run_docker.sh.
7. make_prediction.sh - its a prediction input script, execute once docker and kubernetes are running.
8. .circleci/config.yml - circleCI configuration file to support devops deployment.

### Executing the scripts:
Make sure  project environment is setup correctly

Execute below commands to create virtual environment and activate it.
1. python3 -m venv ~/.devops
2. source  ~/.devops/bin/activate
3. make install  - to install dependencies 
4. make installdochadolint
5. make init - This command should be error free which validate app.py and Dockerfile.
6. make installdochadolint 
7. execute ./run_docker.sh - This will bring up docker image.
8. execute ./make_prediction.sh to check if app.py is working and capture the output.
9. execute ./upload_docker.sh to upload docker image to docker hub
10. execute run_kubernetes.sh This command will create a pod.
11. execute ./make_prediction.sh to check if app.py is working and capture the output.
