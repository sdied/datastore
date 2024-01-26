curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Generate a 5 sentence marketing message for a company with the given characteristics.\n\nDetails Characteristics:\n\nCompany - Golden Bank\n\nOffer includes - no fees, 2% interest rate, no minimum balance\n\nTone - informative\n\nResponse requested - click the link\n\nEnd date - July 15\n\nEmail ",
	"parameters": {
		"decoding_method": "sample",
		"max_new_tokens": 200,
		"min_new_tokens": 50,
		"random_seed": 111,
		"stop_sequences": [],
		"temperature": 0.8,
		"top_k": 50,
		"top_p": 1,
		"repetition_penalty": 2
	},
	"model_id": "google/flan-t5-xxl",
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