# example rails + docker-kubernetes-freelunchci app

This is an example rails app with docker+kubernetes+freelunchci. Please note that this app is not intended to be a production ready app or the base for a production rails app.


## Notices
* please see the docs directory for more documentation / information.


## Prerequisites
* docker
* docker-compose


## Setup
* `docker-compose build`


## Run
* `docker-compose up`
* initialize the database: `docker-compose run web rake db:migrate`


## View
* go to: http://localhost:3000/


## Tests


## Developer
* any changes to the Gemfile or the Dockerfile necessitate a `docker-compose build`
* get a rails console: `docker-compose run web rails console`
