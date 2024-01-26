curl "https://us-south.ml.cloud.ibm.com/ml/v1-beta/generation/text?version=2023-05-29" \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json' \
  -H 'Authorization: Bearer YOUR_ACCESS_TOKEN' \
  -d '{
	"input": "The following document is a transcript from a financial earnings call.  Read the document and then write a short 1 paragraph summary.\n\nDocument: Financial Highlights\n\nI’ll start with the financial highlights of the fourth quarter. We delivered $8 billion in revenue, $1.5 billion of operating pre-tax income and operating earnings per share of $1.5. In our seasonally strongest quarter, we generated $2.5 billion of free cash flow. Our revenue for the quarter was up over three percent at constant currency. While the dollar weakened a bit from 90 days ago, it still impacted our reported revenue by over $500 million – and 3 points of growth.  Revenue growth this quarter was again broad based. Product Sales revenue was up eight percent and Services up nine percent. These are our growth vectors and represent over 35 percent of our revenue. Within each of these segments, our growth was pervasive. We also had good growth across our geographies, with mid-single digit growth or better in Americas, EMEA and Asia Pacific. And for the year, we gained share overall. We had strong transactional growth in Product Sales to close the year. At the same time, our recurring revenue, which provides a solid base of revenue and profit, also grew.  Earnings Prepared RemarksEarnings were up 8.5 percent from last year. Looking at our profit metrics for the quarter, we expanded operating pretax margin by 85 basis points. This reflects a strong portfolio mix and improving Product and Consulting margins. These same dynamics drove a 30-basis point increase in operating gross margin. Our expense was down year to year, driven by currency dynamics. Within our base expense, the work we’re doing to digitally transform our operations provides flexibility to continue to invest in innovation and in talent. Our operating tax rate was 7 percent, which is flat versus last year. And our operating earnings per share of $1.5 was up over seven percent. Turning to free cash flow, we generated $2.5 billion in the quarter and $4.5 billion for the year. Our full-year free cash flow is up $1 billion fromlast year. As we talked about all year, we have a few drivers of our free cash flow growth. We had working capital improvements driven by efficiencies in ouroperations. Despite strong collections, the combination of revenue performance above our model and the timing of the transactions in the quarter led to higher-than-expected working capital at the end of the year. This impacted our free cash flow performance versus expectations. Our year-to-year free cash flow growthalso includes a modest tailwind from cash tax payments and lower payments for structural actions, partially offset by increased capex investment.\n\n4Q Earnings Prepared RemarksWe ended the year in a strong liquidity position with cash of $4 billion. This is up over half a billion dollars year to year. And our debt balance is down nearly half a billion dollars. Our balance sheet remains strong, and I’d say the same for our retirement-related plans. At year end, our worldwide tax-qualified plansare funded at 57 percent, with the U.S. at 54 percent. Both are up year to year.  We transferred a portion of our U.S. qualified defined benefit plan obligations to insurers, without changing the benefits payable to plan participants. This resulted in a significant non-cash charge in our GAAP results in the third quarter, and we’ll see a benefit in our non-operating charges going forward.\nSummary: ",
	"parameters": {
		"decoding_method": "greedy",
		"max_new_tokens": 300,
		"min_new_tokens": 50,
		"stop_sequences": [],
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