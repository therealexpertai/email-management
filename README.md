# Email-Management

Full EDGE NL API- based solution [download](https://download.expert.ai/email-management-edgeNLAPI.zip)

https://sre-academy-prod-20210330154655023000000002.s3-eu-west-1.amazonaws.com/email-management-edgeNLAPI.zip 

---------------------
SCOPE OF THE PROJECT 
---------------------

This NLU model project processes e-mails classifying them according to a specific taxonomy that was designed to identify the sender's intention to complain about a service or a product and/or ask for support or information. 

Each node of the taxonomy corresponds to a specific category of e-mails:

	- Complaint
	- Information request
	- Support request

Each e-mail classification process is automatic and integrated with data mining capabilities to collect people, companies and products names from text. This project can be deployed to a ready-to-launch Edge NL API that integrates the results with automatic sentiment analysis too - it's an inbuilt feature of the NL API, refer to the edgeNLAPI.py file for the code.

The documents you will find in this project are brief anonymous samples allowing for a more immediate view of categorization and extraction results. 

Feel free to run analyses on longer documents and further develop the module to broaden its capabilities. This module is meant to provide you with a solid starting point as you look into different approaches for E-Mail Management using expert.ai. You can customize the project by adding your own categories and extractions classes or integrating more rules to make it perfect.

------------------------------------
METHOD & DEVELOPMENT LOGIC         
------------------------------------

The classification algorithm follows a Topic Modeling approach and an heuristics-based approach relying on language structure.

The Topic Modeling approach is heavily semantics based. Expert.ai’s NLU analysis actively understands the meaning of words, clustering them and allowing me to treat them as concepts. All concepts belong to a knowledge graph that you can actively employ in your linguistic if-then statements for text classification and data mining.

For this purpose, I often use a specific feature of the proprietary language called ANCESTOR. ANCESTOR allows querying of expert.ai’s vast knowledge graph to collect an entire branch of concepts (e.g., “discontent” will trigger “dissatisfaction”, “disappointment”, “displeasure”, etc. because the knowledge graph already knows what they are), then use them to annotate words and phrases that best characterize my model’s classes.

The advantage of this concept-based technique is that it made model development easier, faster and more effective. Selecting a few representative and key concepts from the graph made my rules richer and more powerful with just a few adjustments. By relying on the graph, I can take full advantage of its NLU analysis, making it possible to distinguish identical words by their meaning. This has been a fundamental value added to my model. Being capable of recognizing and distinguishing complaints, support requests, and information requests relying on meaning instead of words helped making the model smarter and more accurate.

The heuristics-based approach, instead, works at a lower level, getting more into deep linguistics and language structure. Sometimes there are parts of text where being capable of addressing specific relationships between words, lemmas and other grammar elements makes a huge difference in collecting evidence to understand the sender’s intention, and therefore identifying and applying the most appropriate category to a portion of text. Heuristic rules help focusing on these relationships as well as sequences of relevant terms that, when found, would immediately and effectively classify text under the most fitting category. 

For the data mining tasks, I employed the NER capabilities of expert.ai to actively extract people’s and companies’ proper nouns, while again using the knowledge graph to extract known and unknown products mentioned in the emails’ bodies.

In the Studio project, you will find rules examples for both the Topic Modelling and heuristics based approaches, and the data mining tasks (extractions). I labelled all rules to help you discriminating the two approaches providing examples for every single linguistic condition.

---------
CONTENT 
---------

The project features the following files in the "rules" folder: 

- main.cr
- main.jr
- config.cr
- complaint.cr
- people.cr
- products.cr
- companies.cr
- inforequest.cr
- support.cr

The first three files are configuration files, while the rest of the files contain rules for each different node of the taxonomy and each extraction field.

-----------------
FILE DESCRIPTION 
-----------------

- "main.cr" --> this file is used to manage and import all the other rule files and configuration files. It only contains IMPORT statements.

- "config.cr" --> the configuration file contains the definitions for SECTIONS, SEGMENTS as well as the extraction TEMPLATES and FIELDS.

- "complaint.cr" --> contains rules for category "complaint". E-mails are classified as "complaint" if their content shows any form of criticism, claims, unsatisfaction, protest or accusation.

- "people.cr" --> contains rules performing people names extraction.

- "companies.cr" --> contains rules performing companies extraction.

- "products.cr" --> contains rules performing products names extraction.

- "inforequest.cr" --> contains rules for category "info request". E-mails are classified as " info request " if they contain requests for information and other general inquiries. 

- "support.cr" --> contains rules for category "support". E-mails are classified as "support" if their content shows any form of request for assistance.

- "main.jr" --> in this file different functions are activated, performing operations of pre- and post-processing of the documents:

	ONPREPARE: modifies the text before the semantic analysis and the application of rules.
	ONTAGGER: applies tags to certain entities in order to improve disambiguation.
	ONFINALIZE: modifies the standard json output.
	ONCATEGORIZER: applies post-processing logic to the categorization module.
	
The ONCATEGORIZER function is used to perform the following actions:

	function onCategorizer() {
		var RESULTS = CLONE(ALL); --> Collects all categorization results.

		RESULTS = FILTER(RESULTS, [30]); --> In the event of a document being labelled with more than one category, this function filters out all categorization results which score is less than 30% of that of the highest scoring category. For instance: if a category’s score is equal to 50, all other categories with a score below 15 will be filtered out.

		WINNERS = CLONE(RESULTS); --> Provides the final categorization results coming out from the filtering function.
		}

--------------
WHAT YOU NEED 
--------------

-	expert.ai Studio (https://developer.expert.ai/)

-	expert.ai Edge NL API python SDK (https://github.com/therealexpertai/nlapi-python)

-	python v3.5 or above (https://www.python.org/downloads/)

-----------------------
HOW TO RUN THE PROJECT 
-----------------------

TUTORIAL

1.	download this package and unzip it on your local drive

2.	head over to  https://developer.expert.ai/ and register to the portal

3.	log in to you developer.expert.ai profile and click on the Developer menu (left side of the dashboard)

4.	click on Studio and download the setup (Windows or Linux!!) or click on Download plugin for IntelliJ IDEA if you already have it

5.	install the IDE (it's just a simple wizard)

6.	Launch Studio and open this package folder from your local drive

7.	Enjoy and contribute! ;)

-------------------
HOW TO TRY THE API 
-------------------

TUTORIAL

1.	open the terminal and type 
		
		pip install expertai-nlapi

2.	head over to the "package\edge" folder in the Studio project

3.	launch the model by clicking on the "runmeWindows.cmd" file

4.	go back to the project folder and open the edgeNLAPI.py python file with a text or code editor

5.	fill in your expert.ai developer portal credentials at rows 2 and 3

		import os
		os.environ["EAI_USERNAME"] = 'youremail@youremail.com'
		os.environ["EAI_PASSWORD"] = 'yourpassword!'

	and then launch the script either from terminal or you python editor.


If you make any edits to the project and want to try your new model out, all you need to do is:

1.	from the expert.ai Studio Email Management project, click on "Studio>Deploy" or press Ctrl+Alt+P and follow the wizard

2.	repeat the steps above from 1 to 4 and enjoy your updated API


If you want to customize the API, head over to https://docs.expert.ai/edgenlapi/latest/reference/output/linguistic-analysis/ and add more in-built API features!
