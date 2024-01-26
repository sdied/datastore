curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "Translate the following code from C++ to Python.\n\nC++: #include \"bits/stdc++.h\"\nusing namespace std;\nbool isPerfectSquare(long double x) {\n  long double sr = sqrt(x);\n  return ((sr - floor(sr)) == 0);\n}\nvoid checkSunnyNumber(int N) {\n  if (isPerfectSquare(N + 1)) {\n    cout << \"Yes\n\";\n  } else {\n    cout << \"No\n\";\n  }\n}\nint main() {\n  int N = 8;\n  checkSunnyNumber(N);\n  return 0;\n}\nPython: from math import *\n \ndef isPerfectSquare(x):\n    sr = sqrt(x)\n    return ((sr - floor(sr)) == 0)\n \ndef checkSunnyNumber(N):\n    if (isPerfectSquare(N + 1)):\n        print(\"Yes\")\n    else:\n        print(\"No\")\n \nif __name__ == '\''__main__'\'':\n    N = 8\n    checkSunnyNumber(N)\n\n<end of code>\n\nC++: #include <bits/stdc++.h>\nusing namespace std;\nint countAPs(int S, int D) {\n  S = S * 2;\n  int answer = 0;\n  for (int i = 1; i <= sqrt(S); i++) {\n    if (S % i == 0) {\n      if (((S / i) - D * i + D) % 2 == 0)\n        answer++;\n      if ((D * i - (S / i) + D) % 2 == 0)\n        answer++;\n    }\n  }\n  return answer;\n}\nint main() {\n  int S = 12, D = 1;\n  cout << countAPs(S, D);\n  return 0;\n}\nPython: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 300,
		"min_new_tokens": 0,
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