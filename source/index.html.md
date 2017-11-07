---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - ruby
  - python
  - javascript

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/lord/slate'>Documentation Powered by Slate</a>

includes:
  - models
  - errors

search: true
---

# Introduction

Welcome to the Coin Jinja API! You can use our API to access coinjinja API endpoints, which can modify information of your ICO project.

We have language bindings in Shell, Ruby, and Python! You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

> To authorize, use this code:

```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
```

```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
```

```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: YOUR_API_KEY"
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
```

> Make sure to replace `YOUR_API_KEY` with your API key.

Coinjinja uses API keys to allow access to the API. You can register a new coinjinja API key at our [developer portal](https://coinjinja.com/developers).

Coinjinja expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: YOUR_API_KEY`

<aside class="notice">
You must replace <code>YOUR_API_KEY</code> with your personal API key.
</aside>

# ICO Updates

## Post a new ICO Update

```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
ico_update = api.ico_updates.post(
  token_sold: 123,
  raised_amount: 123
})
puts(ico_update.id)
```

```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
ico_update = api.ico_updates.post(
  token_sold=123,
  raised_amount=123
)
print(ico_update.id)
```

```shell
curl "https://coinjinja.com/owner-api/ico-updates"
  -H "Authorization: YOUR_API_KEY"
  -d "{\"token_sold\":123,\"raised_amount\":123}"
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

> The above command returns JSON structured like this:

```json
{
  "id": 123,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

You can post a update of your ICO project via this endpoint. 

Your update won't be reflected in our website immediately. You can check the review status of the update using the [Get a Specific ICO Update](#get-a-specific-ico-update) API with the update ID given in the response of your request.

### HTTP Request

`POST https://coinjinja.com/owner-api/ico-updates`

### Body Parameter

A JSON object with the following fields. Only fields to update are needed.

Field | Description
--------- | -----------
token_sold | The tokens sold
raised_amount | The raised amount in USD

## Get Your ICO Updates

```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
api.ico_updates.get
```

```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
api.ico_updates.get()
```

```shell
curl "https://coinjinja.com/owner-api/ico-updates"
  -H "Authorization: YOUR_API_KEY"
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
let ico_updates = api.ico_updates.get();
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 1,
    "name": "Fluffums",
    "breed": "calico",
    "fluffiness": 6,
    "cuteness": 7
  },
  {
    "id": 2,
    "name": "Max",
    "breed": "unknown",
    "fluffiness": 5,
    "cuteness": 10
  }
]
```

This endpoint retrieves your latest ICO updates.

### HTTP Request

`GET https://coinjinja.com/owner-api/ico-updates`

## Get a Specific ICO Update

```ruby
require 'coinjinja'

api = CoinJinja::APIClient.authorize!('YOUR_API_KEY')
api.ico_updates.get(123)
```

```python
import coinjinja

api = coinjinja.authorize('YOUR_API_KEY')
api.ico_updates.get(123)
```

```shell
curl "http://example.com/api/ico_updates/123"
  -H "Authorization: YOUR_API_KEY"
```

```javascript
const coinjinja = require('coinjinja');

let api = coinjinja.authorize('YOUR_API_KEY');
let max = api.ico_updates.get(123);
```

> The above command returns JSON structured like this:

```json
{
  "id": 123,
  "name": "Max",
  "breed": "unknown",
  "fluffiness": 5,
  "cuteness": 10
}
```

This endpoint retrieves a specific ICO update.

<aside class="warning">Inside HTML code blocks like this one, you can't use Markdown, so use <code>&lt;code&gt;</code> blocks to denote code.</aside>

### HTTP Request

`GET http://example.com/ico_updates/<ID>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the ICO update to retrieve
