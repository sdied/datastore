curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Using the directions below, generate Python code for the given task.\n\nInput: # Write a Python function that prints '\''Hello World!'\'' string '\''n'\'' times.\nOutput: def print_n_times(n):\n    for i in range(n):\n        print(\"Hello World!\")\n\n<end of code>\n\nInput: # Write a Python function, which generates sequence of prime numbers.\n# The function '\''primes'\'' will take the argument '\''n'\'', an int. It will return a list which contains all primes less than '\''n'\''.\nOutput: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 1000,
		"min_new_tokens": 1,
		"stop_sequences": [
			"<end of code>"
		],
		"repetition_penalty": 1
	},
	"model_id": "bigcode/starcoder",
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