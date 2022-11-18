#Docker Assignment 

**WORK  FLOW :-

* I chose one assignment from GitHub.

* GitHub URL:https://github.com/infracloudio/csvserver.git


* I downloaded a zip file from above GitHub.


* I had a zip file. I did unzip that by using the below command.


* I had no unzip installation so i install the unzip by using
 
     ```sudo apt-get install unzip```

* After unzip i got one file that was “csvserver-master”. When i had “csvserver-master” i entered into that folder by using below command.
  
      ```cd csvserver-master```

* I created a new folder to perform all the steps from that directory that was “solution”. So I created a folder by using the below command.
    
	```mkdir solution```
 
* I entered into that folder to perform all the steps from that directory(solution). By using command
     
	 ```cd solution```  

* When I entered into the solution folder I created a touch file that was “gencsv.sh”.


* I added a shell script by using “vi editor”. By using the command 
      
	  ```sudo vi gencsv.sh```
	  
     ![Screenshot_20221116_082419](https://user-images.githubusercontent.com/116748521/202653635-c45c2e5a-26df-41e4-8eab-8d31ba9f5d33.png)        

* In at that time i got “one inputFile”
  
  In the inputFile we had data that was.            
  
  We created an inputFile for giving inputdata. At that time we were using the below command.

   Command:- ```sudo docker run -d -v /home/anji/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile infracloudio/csvserver:latest```
     
	 ![Screenshot_20221116_083503](https://user-images.githubusercontent.com/116748521/202654230-9c70fa69-2d1c-4442-adf2-3adfa317ae76.png)


* Whenever we used the above command we got an error. Like, a container was created but it’s in running mode. Error was shown in the image below.  
      	  
     ![Screenshot_20221116_083821](https://user-images.githubusercontent.com/116748521/202655049-022671b4-fec2-4c10-a61b-3ba2c11717a2.png)
	   
* At that time logs were also not working, we had an error like…  
      
     ![Screenshot_20221116_084337](https://user-images.githubusercontent.com/116748521/202655201-c33c349e-68b2-43bb-8960-094deb9dcd8b.png)


* After that i realised my mistake, my mistake was i didn’t give the correct path. When I saw that, I was given the correct path. 

	
* This was the correct path. 
 
     Command: ```sudo docker run -d -v /home/anji/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```
	 
	 ![Screenshot_20221116_085214](https://user-images.githubusercontent.com/116748521/202655764-b4df2e46-b4da-481d-9484-c6622ad6c351.png)
 
* When I gave the correct path it was working and also the docker container was running.

      
     ![Screenshot_20221116_090015](https://user-images.githubusercontent.com/116748521/202656655-f8b15032-7c09-4234-b708-82d5d23446f9.png)


* When the docker container was in running mode. We wanted to expose our docker container to the public. At that time first we checked the inspect of our docker container to check which port we had.


* We had the 9300 port.
 
* So we decided to port mapping from local port(VM) to web port. By using the below command.
 
     command :-  ```sudo docker run -d -p 9300:9393 -v /home/anji/docker/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```
     
	 ![Screenshot_20221116_091723](https://user-images.githubusercontent.com/116748521/202656909-9e81d1c2-9559-4a64-9627-fdc87940a315.png)

* At that time we had an error. That was, the web page not working. Because we gave wrong port mapping. 


* ```9300:9393``` this was what we gave.


* After we realised we gave correct port mapping, like shown below

     command :-  ``` sudo docker run -d -p 9393:9300 -v /home/anji/docker/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```       
     
     ![Screenshot_20221116_092724](https://user-images.githubusercontent.com/116748521/202657305-02c4d9b5-8bdd-45c5-b868-d394bafff96c.png)
  
** ```Note``` :-  ```“-d” means detach mode(background)```
                   ```“-v” means volume```
                    ``` “-p” port mapping```

* If you want to pass the  environment variable to the docker run command use the -env/-e environment variable=value


* Set the environment variable CSVSERVER_BORDER to have value Orange.
 
   By using bellow the command

     ```sudo docker run -e CSVSERVER_BORDER:Orange -d -p 9393:9300 -v /home/anji/docker/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```
     
     ![Screenshot_20221116_095016](https://user-images.githubusercontent.com/116748521/202657715-54e6e574-e0eb-4c2a-a9bd-106a58755232.png)

* At that time we got successful results from a web page.

     ![Screenshot_20221116_093045](https://user-images.githubusercontent.com/116748521/202657978-ae3db5c7-0e94-4e4f-85fb-dc7a6bee67ed.png)

* Port :- ```http://192.168.1.110:9393```

     ![Screenshot_20221116_095516](https://user-images.githubusercontent.com/116748521/202658006-b0fdc072-bcd7-4630-8108-5de950c9807f.png)

* Finally, i finished assignment successfully 






##DOCKER COMMANDS 

** What i used commands for above assignment :-

* Read Docker orientation and setup: https://docs.docker.com/get-started/
 
* Read Docker build and run your image: https://docs.docker.com/get-started/part2/
 
* Read Get started with Docker Compose: https://docs.docker.com/compose/gettingstarted/
 
* Read Prometheus getting started: https://prometheus.io/docs/prometheus/latest/getting_started/
 
* Read Prometheus installation with Docker: https://prometheus.io/docs/prometheus/latest/installation/


* Below image shows what i used commands for running a container image.
   
     ```sudo docker run -d -v /home/anji/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```

     ![Screenshot_20221116_083503](https://user-images.githubusercontent.com/116748521/202654230-9c70fa69-2d1c-4442-adf2-3adfa317ae76.png)

* Once a container is created in that case, how to check the running container.
    
   	 Command:- ```sudo docker ps```
   
     ![Screenshot_20221116_054024](https://user-images.githubusercontent.com/116748521/202660213-3232d0cf-d733-4b54-b6bb-9d4f51ed6fea.png)
* If you check all containers by using the below command.
    
	 Command :-  ```sudo docker ps -a``` 

     ![Screenshot_20221116_055741](https://user-images.githubusercontent.com/116748521/202660267-d15b340d-1c93-4984-b449-09aa91d97756.png)
                            
 
* If you check the inspection of the container by using the below command
   
     Command:- ```sudo docker inspect <container id>```

     ![Screenshot_20221116_062049](https://user-images.githubusercontent.com/116748521/202660289-74c9207e-a90e-4d8e-b9fc-989db3f0bd47.png)

* If you check logs of the container by using the below command.
    
   	 Command :- ```sudo docker logs <container id>``` 

     ![Screenshot_20221116_062800](https://user-images.githubusercontent.com/116748521/202660346-02c6d01e-da6d-4ebc-903e-0417c3fbd7db.png)

* If you want to stop your docker container, use the below command.
    
	 Command :- ```sudo docker stop <container id>```

     ![Screenshot_20221116_063819](https://user-images.githubusercontent.com/116748521/202660397-abce018c-90d4-4bff-b974-cf54f1cb5e7f.png)

* If you want to remove/delete your docker container, use the below command.
   
     Command :- ```sudo docker rm <container id>```

     ![Screenshot_20221116_064303](https://user-images.githubusercontent.com/116748521/202660472-f7e1a91a-006a-4ad1-9dc0-9d17edc70d9a.png)

* In case you didn’t remove/delete your docker container, in that case you use the below command for remove/delete your docker container.
  
     Command :-  ```sudo docker rm -f <container id>```

     ![Screenshot_20221116_064810](https://user-images.githubusercontent.com/116748521/202660531-bfa79b90-9f22-4037-a391-1083e5a587c5.png)


* ``Note`` :- ```rm -f``` means remove forcefully.

* In case you want to enter into your running docker container, use the below command.
   
     Command :-  ```sudo docker exec -it <container id> /bin/bash```
     ![Screenshot_20221116_065246](https://user-images.githubusercontent.com/116748521/202660581-3ecb97bc-d2de-4c68-8fdf-b6f7fb7db82e.png)
* When you entered into your running docker container, in case if want to check your docker container port numbers, in that time  you can use below command

     Commands :-  ```ps -a```
                ```netstat -nltp```

     ![Screenshot_20221116_065923](https://user-images.githubusercontent.com/116748521/202660618-7cdcd66b-7496-410e-b6eb-70c000d62eda.png)


* For port mapping.
 
     ``` sudo docker run -d -p 9393:9300 -v /home/anji/docker/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```

     ![Screenshot_20221116_093045](https://user-images.githubusercontent.com/116748521/202657978-ae3db5c7-0e94-4e4f-85fb-dc7a6bee67ed.png)
     
* For environment variables.
  
     ```sudo docker run -e CSVSERVER_BORDER:Orange -d -p 9393:9300 -v /home/anji/docker/ubuntu/docker-learning/assignment/csvserver-master/solution/inputFile:/csvserver/inputdata infracloudio/csvserver:latest```
     
	 ![Screenshot_20221116_093045](https://user-images.githubusercontent.com/116748521/202657978-ae3db5c7-0e94-4e4f-85fb-dc7a6bee67ed.png) 
     
	 ![Screenshot_20221116_095516](https://user-images.githubusercontent.com/116748521/202658006-b0fdc072-bcd7-4630-8108-5de950c9807f.png)

















