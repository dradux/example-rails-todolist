# Example Rails Todo App

This is an example rails todo app. The app was built as an example/reference application for use with freelunchci.

This app is dockerized and will be kubernetized and freelunchized ;-)


## Notices
* this app is not intended to be a production ready app or the base for a production app, its purpose is for example/demonstration usage only.
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


## FLCI Testing
* if you would like to change something in the app to cause a flci build you can update the apps version (config/environment.rb > APP_VERSION).


## Tests
* `docker-compose run -e "RAILS_ENV=test" web rails test test/models/todo_test.rb`


## Developer
* any changes to the Gemfile or the Dockerfile necessitate a `docker-compose build`
* get a rails console: `docker-compose run web rails console`
