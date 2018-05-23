Prerequisite: docker and sam cli

1. ```docker images | grep amaysim/serverless```

What's inside? serverless, npm, aws-cli

2. ```docker pull amaysim/serverless:1.27.1```

3. ```docker run --rm -it -v $PWD:/opt/app amaysim/serverless:1.27.1 sls create -t -p```
This will show a serverless error and in the message the available template where you can choose from.

4. ```docker run --rm -it -v $PWD:/opt/app amaysim/serverless:1.27.1 bash```
This will open up a terminal session which runs inside the docker container.

5. ```sls create -t aws-nodejs -p activity1```

6. available IDEs are VSCode, JetBrains IDE of your choice, VIM

7. Testing using sam local

8. ```sam --version``` to check if you have it installed

9 if you have not yet installed sam, https://github.com/awslabs/aws-sam-cli#installation

10. ```sam --help``` to quickly give you an idea what it does

11. ```echo '{}' | Sam local invoke```, it's able to test by reading from stdin for different events

12. ```sam local generate-event --help``` will give you an idea which events are available

13. ```sam local generate-event s3``` prints out the skeleton for the s3 event


