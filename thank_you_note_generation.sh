curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Write a thank you note for attending a workshop.\n\nAttendees: interns\nTopic: codefest, AI\nTone: energetic\n\n",
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