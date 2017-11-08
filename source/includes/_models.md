# Models

## ICO Update

The ICO update model provides review status of your ICO update request.

Field | Type | Description
----- | ----- | -----
id | string | The ID of your ICO update
payload | object | The content of your request
status | string | One of `waiting`, `passed` and `rejected`
review | string | The review message, may including the reason why your update was rejected
created_at | datetime | Created time
updated_at | datetime | Updated time

## ICO Update Payload

The ICO update payload model provides fields to update your ICO project. All fields you provided are optional.

Field | Type | Description
----- | ----- | -----
accept_coins | [string] | Accept coins, e.g. `["BTC", "ETH"]`
banner | url | A link to the banner image of your project
slogan | string | The slogan of your project
excerpt | string | A short description of your project
desc | html | A detailed description
ico_start | string | The start time of ICO
ico_end | string | The end time of ICO
industries | [string] | The industries your project belongs to, see [Industries](#industries)
initial_price | string | The initial price
logo | url | A link to the logo image of your project
platform | string | The platform your ICO runs on
raised_amount | string | The current raised amount
sold_tokens | string | Sold tokens
target_amount_max | string | The maximum target amount
target_amount_min | string | The minimum target amount
token_for_sale | string | Token for sale
token_type | string | Token type, e.g. `ERC20`
video | url | The video link of your project
team | [object] | Your team members, see [Team Member](#team-member)
urls | object | Links for website, white paper, and ocial accounts, see [URL Keys](#url-keys)
bonus | [object] | Your bonus plan, see [Bonus Item](#bonus-item)
feedback_email | string | The email address where our review feedback will be sent to

## Team Member

This describes a member of your team.

Field | Type | Description
----- | ----- | -----
avatar | url | An image link of headshot/portrait
name | string | Full name
socials | object | Links for social accounts, see [URL Keys](#url-keys)
title | string | Title of the member, e.g. `CEO`

## Bonus Item

This describes an item of your bonus plan.

Field | Type | Description
----- | ----- | -----
time | string | For time definition, e.g. `Pre-sale`, `Day 1`, or `First week`
value | string | The correspond bonus, e.g. `50%` or `100 ABC`
