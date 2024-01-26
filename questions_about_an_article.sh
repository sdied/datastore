curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Answer the following question using only information from the article. If there is no good answer in the article, say \"I don'\''t know\".\n\nArticle: \n###\nTomatoes are one of the most popular plants for vegetable gardens. Tip for success: If you select varieties that are resistant to disease and pests, growing tomatoes can be quite easy. For experienced gardeners looking for a challenge, there are endless heirloom and specialty varieties to cultivate. Tomato plants come in a range of sizes. There are varieties that stay very small, less than 12 inches, and grow well in a pot or hanging basket on a balcony or patio. Some grow into bushes that are a few feet high and wide, and can be grown is larger containers. Other varieties grow into huge bushes that are several feet wide and high in a planter or garden bed. Still other varieties grow as long vines, six feet or more, and love to climb trellises. Tomato plants do best in full sun. You need to water tomatoes deeply and often. Using mulch prevents soil-borne disease from splashing up onto the fruit when you water. Pruning suckers and even pinching the tips will encourage the plant to put all its energy into producing fruit.\n###\n\nQuestion: Is growing tomatoes easy?\nAnswer: Yes, if you select varieties that are resistant to disease and pests.\n\nQuestion: What varieties of tomatoes are there?\nAnswer: There are endless heirloom and specialty varieties.\n\nQuestion: Why should you use mulch when growing tomatoes?\nAnswer: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 100,
		"min_new_tokens": 0,
		"stop_sequences": [
			"\n\n"
		],
		"repetition_penalty": 1
	},
	"model_id": "meta-llama/llama-2-70b-chat",
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