The URL of your S3-hosted web page:

https://posti-demo.s3.eu-central-1.amazonaws.com/index.html


Application works as below:
	. takes FirstName and LastName as input
	. It then send a POST request to AWS API-Gateway
	. API-Gateway forwards the request to nodejs Lambda function
	. Lambda function transform the name to upper case and add a message string
	. then return response back to the client
	. client displays the response.
	
challenges faced:
	1. CORS enabling and HTTP headers [solved by checking similar issues how solved by others using google search]
	2. some challenges faced in coding (nodejs javascript HTML) [as I'm not a regular application developer]

Future Improvements:
	1. API-Gateway is open, authentication not configured, should be improved.
	2. Other Cloud features not enabled (Like: cloudwatch, advanced configurations, securities and so on)
	
	






