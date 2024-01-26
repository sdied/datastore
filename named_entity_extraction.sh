curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Act as a webmaster who must extract structured information from emails. Read the below email and extract and categorize each entity.\n\nInput: \"Golden Bank is a competitor of Silver Bank in the US\" said John Doe.\nNamed Entities: Golden Bank: company, Silver Bank: company, US: country, John Doe: person\n\nInput: Dear team, \n\nI hope this email finds you well. I wanted to share some outstanding achievements from our recent sales efforts.\n\nWe now have a multimillion dollar contract with Golden Retail, where we are providing cutting-edge software solution that streamlines inventory management for retail businesses. The customer was struggling with manual inventory tracking, leading to inefficiencies and errors. We have great testimonials from John Doe who is our contact at Golden Retail.\n\nBest regards,\n\nSarah\nNamed Entities: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 50,
		"min_new_tokens": 1,
		"stop_sequences": [],
		"repetition_penalty": 1
	},
	"model_id": "google/flan-ul2",
	"project_id": "279343fa-e0a8-4b3a-99ec-81ef64e2cedc",
	"moderations": {
		"hap": {
			"input": true,
			"output": true,
			"threshold": 0.5,
			"mask": {
				"remove_entity_value": true
			}
		}
	}
}'