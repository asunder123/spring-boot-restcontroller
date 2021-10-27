# Spring Boot @RestController Example with Chaos Monkey Enabled in Spring Application Properties

## Description

This project contains the sample code used in [The Practical Developer Blog](https://thepracticaldeveloper.com/2017/03/04/restcontroller-spring-boot-example-with-springfox-swagger/). It's a Spring Boot application with one plain Java object (`SpanishGreeting`) and a Spring Controller `SpanishGreetingController`.

The main goal of the project is to show how to write a `@RestController` in Spring Boot and include documentation with Swagger.
 
## How does it work?

You can use the endpoints behind `http://localhost:8082/spanish-greetings`. If you append `/random` to a `GET` request you'll receive a random Spanish greeting (which are actually hard-coded). You can also `GET` them by `id` (only from 1 to 3). To create a new one, you need to perform a `POST` operation.

Actually, much better if you just start the application and navigate to `http://localhost:8082/swagger-ui.html`. There you'll find a nice API documentation thanks to Swagger. Moreover, *you can play with it*.

![Swagger Documentation](images/swagger.png)

Upon Succesful Initialization of Chaos Monkey you should see something like this : 

![image](https://user-images.githubusercontent.com/50335583/135620733-ee4eb8bc-918d-461a-8cca-40f085976f90.png)


In addition to the end points and controller, chaos testing can be done as shown using postman for the endpoints exposed under actuator:

![image](https://user-images.githubusercontent.com/50335583/135618904-26996ad8-1824-4d03-a97c-4e878b8ef2a2.png)
![image](https://user-images.githubusercontent.com/50335583/135619103-a6322eba-2fb0-4df9-847c-68daf95f5a6b.png)
![image](https://user-images.githubusercontent.com/50335583/135619155-9b62c70a-b8fa-4028-b11a-d58f2ba09b75.png)
![image](https://user-images.githubusercontent.com/50335583/135619288-a3968210-c7aa-48d9-8105-36be2bbacc18.png)
![image](https://user-images.githubusercontent.com/50335583/135619450-1a7e2d03-0fa4-4c14-bcdb-7d95c6cbee98.png)
![image](https://user-images.githubusercontent.com/50335583/135620247-d62f0021-a1e1-4464-9e62-0d58e705d623.png)


Change the Assaults Configuration to invoke Methods within the Application: 

![image](https://user-images.githubusercontent.com/50335583/135629011-17cb2033-8cfc-4fc0-9b3a-7c020db5e0f4.png)

Confirm Response: 
![image](https://user-images.githubusercontent.com/50335583/135629142-e8ab20d0-9bef-472b-8034-e36b68fcd6c8.png)

Initiate the Attack Vector: 
![image](https://user-images.githubusercontent.com/50335583/135629375-f710d0e2-192b-4562-bf06-133f572acbf3.png)

Sample Response 1: 
![image](https://user-images.githubusercontent.com/50335583/135629683-95a6be11-994e-4809-88f7-42c9108161b7.png)

Sample Response 2:
![image](https://user-images.githubusercontent.com/50335583/135629736-c947f4bc-02d9-473f-8b50-ffaddced8478.png)

Confirmation of Runtime Exceptions Activated:
![image](https://user-images.githubusercontent.com/50335583/135630545-92508669-6215-4988-9fe6-be14ff9f32ed.png)


Logs Confirming Chaos Monkey Bringing Down Application:
![image](https://user-images.githubusercontent.com/50335583/135631448-3ccbe198-b7d4-4ffb-83ec-e0aefd33f4da.png)

Before changing the attack vector assaults configuration is default as shown :
![image](https://user-images.githubusercontent.com/50335583/135633450-fa485cce-586e-4a80-9554-c76bc9897583.png)

Logs:
![image](https://user-images.githubusercontent.com/50335583/135633540-5ea3b75e-acef-4b51-849a-6b56f30ee7df.png)

After changing attack vector:
![image](https://user-images.githubusercontent.com/50335583/135633736-4cc03e52-1032-4044-8882-e37bb0b3d44e.png)

Initating Attack:
![image](https://user-images.githubusercontent.com/50335583/135633837-b22252fb-1b2a-4658-8746-ac54c08d9dfa.png)

Confirmation of Shutdown via Logs :
![image](https://user-images.githubusercontent.com/50335583/135633977-b5e56f46-672c-4f59-8a53-0ac0c1f1d07e.png)

#CPU Attack wit hMemory Assaults:
![image](https://user-images.githubusercontent.com/50335583/137796659-7b05d17c-4bf6-48c6-a8e9-5021a4e81a7b.png)

![image](https://user-images.githubusercontent.com/50335583/137796607-ed60ca8b-c759-48cc-9476-2cc811b34c4e.png)


## Configuration changes to pom.xml and prometheus.yml : 

# pom.xml:
![image](https://user-images.githubusercontent.com/50335583/138557758-9b698ec5-76cc-47d4-a7c7-86910b2b9d17.png)

# prometheus.yml:
![image](https://user-images.githubusercontent.com/50335583/138557794-5990fec7-7986-4977-9bfc-d24c4f2a9b17.png)

# Prometheus UI showing targets up :
![image](https://user-images.githubusercontent.com/50335583/138558054-d7cbee3b-e6b5-4401-ac9a-a16613efaf8d.png)

## CPU attack assault in Spring Boot Application:

![image](https://user-images.githubusercontent.com/50335583/138557599-1ab0b52e-e254-4f15-a2d2-03fad460f5bc.png)

## Spike in Cpu Utilization seen in Prometheus:
![image](https://user-images.githubusercontent.com/50335583/138557739-0c9b0ae5-a9b3-4348-9911-23b4802f494e.png)

## Injected Latency attack :
![image](https://user-images.githubusercontent.com/50335583/139101615-8359c222-2531-401e-8499-3803e7f870a4.png)
![image](https://user-images.githubusercontent.com/50335583/139106128-d65affea-d21f-4aa2-9315-b9751b1ec119.png)









