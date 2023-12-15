## Question 1:
Scenario: You are tasked with designing the architecture for a 3-tier web application in a 
cloud-agnostic manner. The application will consist of a web tier, an application logic tier, 
and a database tier. The architecture should be designed to be scalable, reliable, and costeffective.
Requirements:
1. Web Tier:
o Should be able to handle a variable amount of traffic, scaling resources as 
needed.
o Include a Content Delivery Network (CDN) to optimize the delivery of web 
content to users.
o Ensure that there is a mechanism for SSL termination to secure the web 
application.
2. Application Logic Tier:
o Design this tier to be scalable to handle an increase in user requests.
o Ensure that the application logic tier can communicate securely with the 
database tier.
o Discuss any state management considerations and how they would be 
handled.
3. Database Tier:
o Choose a suitable database solution considering the application’s data 
requirements and explain your choice.
o Ensure data consistency, availability, and durability.
o Discuss backup and recovery solutions to safeguard data integrity.
Deliverables:
• Provide a detailed architecture diagram illustrating all three tiers, including any 
additional components you deem necessary for the application's functionality and 
resilience.
• Include a brief description explaining your design choices, any potential trade-offs, 
and how you've addressed the key requirements of scalability, reliability, and costeffectiveness.



## Question 2:
Task: Debug and Improve CloudFormation Template
Below is a CloudFormation template meant to create an EC2 instance and associated 
resources. However, it has several issues and potential areas for improvement. Please 
review the template, identify and fix any issues, and suggest improvements.
AWSTemplateFormatVersion: '2010-09-09'
Resources:
 MyEC2Instance:
 Type: 'AWS::EC2::Instance'
 Properties:
 InstanceType: t2.micro
 ImageId: ami-0abcdef1234567890
 KeyName: MyKeyPair
 SecurityGroups:
 - Ref: InstanceSecurityGroup
 InstanceSecurityGroup:
 Type: 'AWS::EC2::SecurityGroup'
 Properties:
 GroupDescription: Enable SSH access via port 22
 SecurityGroupIngress:
 - IpProtocol: tcp
 FromPort: '22'
 ToPort: '22'
 CidrIp: 0.0.0.0/0
 MyBucket:
 Type: 'AWS::S3::Bucket
 Properties:
 AccessControl: PublicRead

Outputs:
 InstancePublicIp:
 Description: 'The public IP of the EC2 instance.'
 Value:
 !GetAtt
 - MyEC2Instance
 - PublicIp

Deliverables:
1. Provide a corrected and improved version of the above CloudFormation template.
2. List down the issues you identified in the original template and explain the changes 
you made.
3. Suggest any additional improvements or best practices that could be applied to this 
template to enhance its functionality, security, or efficiency.



## Question 3:
### Q3 - Challenge 1: Log File Parsing

Scenario: You are given a log file from a web server. Each line of the log file contains an IP 
address, a timestamp, and a URL. Your task is to write a program that parses the log file 
and returns a count of unique IP addresses.
SampleLogFile.txt
192.168.0.1 2023-05-15T08:15:30Z /index.html
192.168.0.2 2023-05-15T08:16:45Z /about.html
192.168.0.1 2023-05-15T08:17:20Z /contact.html
192.168.0.3 2023-05-15T08:18:55Z /index.html
192.168.0.4 2023-05-15T08:19:36Z /products.html
192.168.0.2 2023-05-15T08:20:25Z /contact.html
192.168.0.3 2023-05-15T08:21:40Z /about.html
192.168.0.4 2023-05-15T08:22:15Z /index.html
192.168.0.5 2023-05-15T08:23:50Z /contact.html
Deliverables:
• Function to parse the log file and count unique IP addresses.
• A brief explanation of your approach and choice of data structures.
• You may choose any programming language for this task.



### Q3 - Challenge 2: Local Web Application Monitoring 

Scenario: You are working as a CloudOps Engineer for a startup. Your team has developed 
a basic web application that displays "Hello, World!" on accessing the main page. Your task 
is to dockerize this application and set up a local monitoring system to ensure the web 
application is running smoothly.
Requirements:
1. Dockerization:
o Create a simple web application that displays "Hello, World!" on the main 
page.
o Write a Dockerfile to dockerize this web application.
2. Monitoring:
o Write a script to monitor the health of the web application.
o The script should check the application's health every minute to ensure it's 
running and responding correctly.
3. Alerting:
o If the application is down or not responding correctly for two consecutive 
checks, output an alert to a text file named alert.txt with the timestamp and a 
relevant error message.
Deliverables:
• Source code for your web application, Dockerfile, and monitoring script.
• Instructions on how to build, run, and test your setup locally.
• A brief explanation of your approach and any assumptions you made.
Hints:
• You may use frameworks like Flask or Express.js to create your simple web 
application.
• Consider using Docker Compose if you need to manage multiple containers.
• For health checks, you can make HTTP requests to the web application and check 
the response.
• Use a scheduling library or a simple loop with sleep to perform health checks at 
regular intervals



Bonus Exercise:
### Q3 – Bonus Challenge 3: Serverless Application Deployment 

Scenario: You are required to design and deploy a serverless web application using AWS 
Free Tier services. The application should have a simple frontend hosted on Amazon S3, 
and the backend should use AWS Lambda functions triggered by API Gateway. The 
application should have at least one API endpoint that performs a simple calculation or 
data retrieval operation.
Preparation:
• Sign up for an AWS Free Tier account if you don't have one already. Please ensure 
that you stay within the Free Tier limits to avoid any charges.
Tasks:
1. Create a simple static web page with HTML, CSS, and JavaScript. The page should 
have a form that allows users to input data.
2. Host your static website on Amazon S3.
3. Create an AWS Lambda function that will process the data submitted from the web 
page.
4. Expose your Lambda function via an API using Amazon API Gateway.
5. Connect your web page to the API so that it can send data to, and receive data 
from, the Lambda function.
6. Ensure that all resources are properly secured and that only necessary permissions 
are granted.
Deliverables:
• The URL of your S3-hosted web page.
• Source code for your web page, Lambda function, and any other scripts or 
configuration files used in your solution.
• A brief description of how your application works, how it should be tested, and any 
setup instructions.
• A discussion of any challenges you faced, how you overcame them, and any future 
improvements that could be made to your application.






