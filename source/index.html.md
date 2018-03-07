---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

toc_footers:
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>

includes:
  - models
  - consts
  - errors

search: true
---

# Introduction

Welcome to the Coin Jinja API! You can use our API to access coinjinja API endpoints, which can modify information of your ICO project.

You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

> To authorize, use this code:

<!-- 
```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
```
-->

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: YOUR_API_KEY"
```

<!--
```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
```
-->

> Make sure to replace `YOUR_API_KEY` with your API key.

Coinjinja API keys now are distributed through email, [contact us](mailto:dev@coinjinja.com) with your business email (@same domain of your website) to ask for it.

Coinjinja expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: YOUR_API_KEY`

<aside class="notice">
You must replace <code>YOUR_API_KEY</code> with your personal API key.
</aside>

# ICO Updates

## Post a new ICO Update

<!--
```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
ico_update = api.ico_updates.post(
)
print(ico_update.id)
```
-->

```shell
curl -X POST "https://www.coinjinja.com/owner-api/ico-updates" \
  -H "Content-Type: application/json" \
  -H "Authorization: YOUR_API_KEY" \
  -d '{
  "accept_coins": ["BTC", "ETH"],
  "banner": "http://abc.io/images/banner.png",
  "slogan": "A great ICO!",
  "excerpt": "Our ICO enables digital security...",
  "desc": "Create a digital...",
  "ico_start": "2017-11-01",
  "ico_end": "2017-11-30",
  "industries": ["Platform", "Business services"],
  "initial_price": "1000 ABC",
  "logo": "http://abc.io/images/banner.png",
  "platform": "Ethereum",
  "raised_amount": "100,000 ABC",
  "sold_tokens": "10,000",
  "target_amount_max": "100,000,000 ABC",
  "target_amount_min": "20,000,000 ABC",
  "token_for_sale": "100,000,000",
  "token_type": "ERC20",
  "symbol": "1WO",
  "video": "http://youtube.com/watch?v=abcdef",
  "team": [
    {
      "avatar": "https://abc.io/avatar/kieran.jpg",
      "name": "Kieran Booth",
      "socials": {
        "LinkedIn": "https://www.linkedin.com/in/kieran-123"
      },
      "title": "Co-founder, CEO"
    },
    {
      "avatar": "https://abc.io/avatar/connor.jpg",
      "name": "Connor Newman",
      "socials": {
        "LinkedIn": "https://www.linkedin.com/in/connor-456"
      },
      "title": "Co-founder, COO & CTO, Blockchain developer"
    }
  ],
  "urls": {
    "Facebook": "https://www.facebook.com/abc/",
    "GitHub": "https://github.com/abc/abc-lib",
    "Medium": "https://medium.com/@abc/",
    "Reddit": "https://www.reddit.com/r/abc/",
    "Slack": "https://abc-slack-invite.herokuapp.com/",
    "Telegram": "https://t.me/abc",
    "Twitter": "https://twitter.com/abc",
    "Website": "http://abc.io/",
    "White paper": "http://abc.io/docs/wp.pdf"
  },
  "bonus": [
    {
      "time": "Pre-sale - Day 1",
      "value": "50%"
    },
    {
      "time": "Pre-sale - Day 2",
      "value": "40%"
    },
    {
      "time": "Pre-sale - Day 3",
      "value": "30%"
    }
  ],
  "feedback_email": "stuff@abc.com"
}'
```

<!--
```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
ico_update = api.ico_updates.post(
  token_sold: 123,
  raised_amount: 123
})
puts(ico_update.id)
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
let ico_update = api.ico_updates.post({
  token_sold: 123,
  raised_amount: 123
});
console.log(ico_update.id)
```
-->

> The above command returns JSON structured like this:

```json
{
  "created_at": "2017-11-01T00:00:00Z",
  "id": "abcdef",
  "payload": {
    "accept_coins": [
      "BTC"
    ],
    ...
  },
  "status": "waiting",
  "updated_at": "2017-11-01T00:00:00Z"
}
```

You can post a update of your ICO project via this endpoint. 

Your update won't be reflected in our website immediately. You can check the review status of the update using the [Get a specific ICO update](#get-a-specific-ico-update) API with the update ID given in the response of your request.

### HTTP Request

`POST https://www.coinjinja.com/owner-api/ico-updates`

### Body Parameter

A JSON object of [ICO Update Payload](#ico-update-payload). Only fields to update are needed.

### Returns

Returns an [ICO Update](#ico-update) corresponding to your request, and raises an error otherwise.

## Get your ICO updates

<!-- 
```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
api.ico_updates.get()
```
 -->

```shell
curl "https://www.coinjinja.com/owner-api/ico-updates"
  -H "Authorization: YOUR_API_KEY"
```

<!--
```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
api.ico_updates.get
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
let ico_updates = api.ico_updates.get();
```
-->

> The above command returns JSON structured like this:

```json
[
  {
    "created_at": "2017-11-02T00:00:00Z",
    "id": "abcdef",
    "payload": {
      "accept_coins": [
        "BTC"
      ],
      ...
    },
    "status": "waiting",
    "updated_at": "2017-11-02T00:00:00Z"
  },
  {
    "created_at": "2017-11-01T00:00:00Z",
    "id": "ghijkl",
    "payload": {
      ...
    },
    "status": "passed",
    "updated_at": "2017-11-01T00:00:00Z"
  }
]
```

This endpoint retrieves your latest ICO updates.

### HTTP Request

`GET https://www.coinjinja.com/owner-api/ico-updates`

### Returns

Returns an array of [ICO Update](#ico-update). If no updates are available, the resulting array will be empty.

## Get a specific ICO update

<!-- 
```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
api.ico_updates.get('abcdef')
```
-->

```shell
curl "https://www.coinjinja.com/api/ico_updates/abcdef"
  -H "Authorization: YOUR_API_KEY"
```

<!--
```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
api.ico_updates.get(123)
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
let max = api.ico_updates.get(123);
```
-->

> The above command returns JSON structured like this:

```json
{
  "created_at": "2017-11-02T00:00:00Z",
  "id": "abcdef",
  "payload": {
    "accept_coins": [
      "BTC"
    ],
    ...
  },
  "status": "waiting",
  "updated_at": "2017-11-02T00:00:00Z"
}
```

This endpoint retrieves a specific ICO update.

### HTTP Request

`GET https://www.coinjinja.com/owner-api/ico-updates/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the ICO update to retrieve

### Returns

Returns an [ICO Update](#ico-update) if a valid ID was provided, and raises an error otherwise.
