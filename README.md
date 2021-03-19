# Email-Management

---------------------
SCOPE OF THE PROJECT |
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
METHOD & DEVELOPMENT LOGIC         |
------------------------------------

The classification algorithm follows a Topic Modeling approach and an heuristics-based approach relying on language structure.

The Topic Modeling approach is heavily semantics based. Expert.ai’s NLU analysis actively understands the meaning of words, clustering them and allowing me to treat them as concepts. All concepts belong to a knowledge graph that you can actively employ in your linguistic if-then statements for text classification and data mining.

For this purpose, I often use a specific feature of the proprietary language called ANCESTOR. ANCESTOR allows querying of expert.ai’s vast knowledge graph to collect an entire branch of concepts (e.g., “pets” will trigger “dogs”, “cats”, “birds”, etc. because the knowledge graph already knows what pets are), then use them to annotate words and phrases that best characterize my model’s classes.

The advantage of this concept-based technique is that it made model development easier, faster and more effective. Selecting a few representative and key concepts from the graph made my rules richer and more powerful with just a few adjustments. By relying on the graph, I can take full advantage of its NLU analysis, making it possible to distinguish identical words by their meaning. This has been a fundamental value added to my model. Being capable of recognizing and distinguishing complaints, support requests, and information requests relying on meaning instead of words helped making the model smarter and more accurate.

The heuristics-based approach, instead, works at a lower level, getting more into deep linguistics and language structure. Sometimes there are parts of text where being capable of addressing specific relationships between words, lemmas and other grammar elements makes a huge difference in collecting evidence to understand the sender’s intention, and therefore identifying and applying the most appropriate category to a portion of text. Heuristic rules help focusing on these relationships as well as sequences of relevant terms that, when found, would immediately and effectively classify text under the most fitting category. 

For the data mining tasks, I employed the NER capabilities of expert.ai to actively extract people’s and companies’ proper nouns, while again using the knowledge graph to extract known and unknown products mentioned in the emails’ bodies.

In the Studio project, you will find rules examples for both the Topic Modelling and heuristics based approaches, and the data mining tasks (extractions). I labelled all rules to help you discriminating the two approaches providing examples for every single linguistic condition.

--------------
WHAT YOU NEED |
--------------

-	expert.ai Studio (https://developer.expert.ai/)

-	python v3.5 or above (https://www.python.org/downloads/)

-----------------------
HOW TO RUN THE PROJECT |
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
HOW TO TRY THE API |
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


If you want to customize the api, head over to https://docs.expert.ai/edgenlapi/latest/reference/output/linguistic-analysis/ and add more in-built API features!
