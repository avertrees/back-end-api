## Authors
[Alessandra Vertrees](https://github.com/avertrees) and [Carlos Guzman](https://github.com/benson19)

## MapBox App API
A rails API for a single-page application that allows users to interact with a map.

## Features
Users are able to view everyone’s pins on the map. When a user clicks on the map, a pin is added to the map at the location. Each pin is represented by a circular image. When a user clicks on an image, a popup marker is displayed with the details about that location and the option to delete, edit, and like that pin. Users can edit the title, description, and image URL. 

## Motivation
This project was created to gain experience working with interactive Maps. 

## Demo 
In the works. Please stand by!

## Tech/Frameworks used
_**Back-end**_
* [Ruby on Rails](https://rubyonrails.org) - Server Framework
* [PostgreSQL](https://www.postgresql.org) - Database

_**Front-end**_
* Vanilla JS, HTML, Custom CSS for styling
* [MapBox](https://docs.mapbox.com/mapbox-gl-js/api/) - Interactive Map Library


## Installation
_**Requirements**_
* [Installing Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [PostgreSQL](https://www.postgresql.org)

In your clone/fork of this repo:

* `bundle install`
* `rails db:create #creates database`
* `rails db:migrate #creates tables in db`
* `rails db:seed #creates seed data`
* `rails s #to run the server`

The instructions for the front-end of this app are [here](https://github.com/avertrees/module-3-front-end). You'll need to clone/fork both repositories and change the fetch URLs if you want to change the API. Otherwise, the app will make calls to Heroku.