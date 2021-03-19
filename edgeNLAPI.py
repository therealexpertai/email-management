import os
os.environ["EAI_USERNAME"] = 'youremail@youremail.com'
os.environ["EAI_PASSWORD"] = 'yourpassword!'


from expertai.nlapi.edge.client import ExpertAiClient
client = ExpertAiClient()

text = """Dear Mr. Avery
I am writing today to complain about my new Blender 365HB. I purchased this blender at your Woodbury, NY store on 8/9/2020.
I purchased the blender only 3 weeks ago and it is falling apart. The insert for the blade has warped and now I must stand there and hold the blender when it is on. Also, one of the blades on the blender is bend after blending ice. Now I'm very disappointed and I hate this blender so much! This performance is unacceptable and your store would not take it back because it was past the 14-day return. This is ridiculous! How was I supposed to know that all these defects would happen within the 14 days? This is bonkers!
I have attached a pdf below of my receipt. In addition, I have attached before and after pictures of the blender. I look forward to your response and your proposed solution to this problem. I have had blenders from Universal Blenders Co before and never have had this problem. Please contact me at the email I am sending you this from or my cell phone 845*******. Thank you for your help in advanced.
Best Regards,
Jane Billings
"""

output = client.classification(text)

print("\n",text)

print("\nTab separated list of categories:")

for category in output.categories:
    print(category.id_, category.hierarchy, sep="\t")

    output = client.extraction(text)

print("\nList of extractions:")

for extraction in output.extractions:
  for field in extraction.fields:
    print(field.name, field.value, sep="\t")

document = client.sentiment(text)

print("\nOverall email sentiment:\n", document.sentiment.overall)

