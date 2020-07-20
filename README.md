# Python_app_docker

We need to first make a base image and push it to our GCR or any repository that you want as storage for 
registry:
$cd Python_app_baseImage/
$docker build -t asia.gcr.io/grand-ward-283704/ubuntubaseimage .

Configure your credential with your docker registry:
$docker push asia.gcr.io/grand-ward-283704/ubuntubaseimage

Then build your final python docker image for deployment
$cd Python_app_docker/
$docker build -t asia.gcr.io/grand-ward-283704/python_app:latest .
$docker push asia.gcr.io/grand-ward-283704/python_app:latest

Now run your docker and test it will come up.

Note:
k8s-helloworld/(This is our python code so you can change Dockerfile as per your code of python)

Let me know if any issues.

