# Models

## ICO Update

The ICO update model provides fields to update your ICO project. All fields you provided are optional.

Field | Type | Description
----- | ----- | -----
accept_coins | [string] | Accept coins, e.g. ["BTC", "ETH"]
banner | url | 
slogan | string | 
excerpt | string | A short description of your project
desc | html | A detailed description
ico_start | string | 
ico_end | string | 
industries | [string] | 
initial_price | string | 
logo | url | 
platform | string | 
raised_amount | string | 
sold_tokens | string | 
target_amount_max | string | 
target_amount_min | string | 
token_for_sale | string | 
token_type | string | 
video | url | 
team | object | 
urls | object | 
bonus | object | 
feedback_email | string | The email address where our review feedback will be sent to

It also contains other things like review status when in response. You don't need to include these fields when posting an ICO update.

Field | Type | Description
----- | ----- | -----
id | int | The ID of your ICO update
review_status | string | REVIEWING, UPDATED, REJECTED
reason | string | The reason why your update was rejected
created_at | datetime | 
