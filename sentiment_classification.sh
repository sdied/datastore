curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Classify this review as positive or negative.\n\nReview: The studio has embraced the poetry in craftsmanship and ushered in the most beautiful stop-motion animation film in years.\nClassification: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 1,
		"min_new_tokens": 0,
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