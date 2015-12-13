# BUEZE Webservice
A simple version of web service that scrapes TAAZE data using the
[taaze](https://github.com/BUEZE/taaze) gem with continuous development using CodeShip, Heroku, and DynamoDB.

Here's the [link]() to our project.

### Handles:

- GET /
  - returns OK status to indicate service is alive  
  - describe the current API version and Github homepage of API

- GET /api/v1/user/{user_id}
  - returns JSON of user's information: user_id, collections, comments

- GET /api/v1/collections/{user_id}.json
  - returns JSON of user's collections: user_id, collections

- GET /api/v1/comments/{user_id}.json
    - returns JSON of user's comments: user_id, comments

- GET /api/v1/tags/{product_id}.json
    - returns JSON of book info: product_id, tags

- POST /api/v1/bookranking
    - takes JSON (format described below)
    - redirects (303) to GET /api/v1/bookranking/

### Example:

- Get info of user 12522728 :

	`/api/v1/user/12522728`

- Get collections of user 13193872 :

	`/api/v1/user/13193872`

- Get comments of user 13472924 :

	`/api/v1/comments/13472924.json`

- Get tags of book 11100763252 :

	`/api/v1/tags/11100763252.json`

## Database version pre-install

- Install postgres (OS X: `brew install postgres`)

- bundle install

- `rake db:create_migration NAME=create_bookranking` to create your local database

## JSON Post Format
  ```JSON
{
  "booknames": "Chicago love story",
  "rank": 3,
  "price": 689,
  "price_description": 7.9,
  "author": "Hiraku",
  "date": "10-01-1949",
  "source": "USA"
}
  ```
