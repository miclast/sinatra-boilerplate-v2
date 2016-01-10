## Sinatra Boilerplate v2

### What Is It?

Sinatra Boilerplate is a starting point for new projects using the Ruby micro web framework [Sinatra](http://www.sinatrarb.com/). I grew tired of constantly checking my last Sinatra project to grab lines from various files when starting fresh so I made something easy to clone from GitHub and just get going.

### Why Sinatra over Rails?

[Ruby on Rails](http://rubyonrails.org/) is still a great framework for web development and I would highly recommend learning it at some point or even moving completely over to it for larger projects. However, when I first started with web development in Ruby, I found Sinatra to be a lot more clear which I found critical in understanding how everything fits together. Sinatra is far less opinionated than Rails which leads to a lot of people using it very differently. This project aims to give just as much structure as is required to keep you fairly organized. It assumes you have some working knowledge of Sinatra and Ruby.

### Version 2 You Say?

The old version of this boilerplate is four years old now. A lot changes in that amount of time. Whilst I went off and was working full-time with Ruby, neglecting this project almost entirely, it's become my most starred repository so I wanted give a bit more back to say thanks for all the support before I move on entirely.

### So What Has Changed?

Firstly, here's what got removed from the first version:

* **Datamapper** (replaced with ActiveRecord)
* **Twitter Bootstrap** (feel free to choose your own, **Foundation** etc.)
* **JQueryMobile** has been removed
* Removed sass Rake task (project uses Compass now)
* Removed bootstrap related tasks from Rakefile
* Mobile request helpers removed

Now what has been added?

* **Compass** - for working with SCSS (and minifying assets at a later stage)
* **ActiveRecord** - makes transitioning to Rails later easier for everyone (plus I like migrations)
* **Underscore.js** - some utility functions to make Javascript more sane
* **Shotgun** & **Tux** - for development, automatic reloading and a REPL for your app
* **Mocha** - mocking to improve your tests
* **Foreman** - Procfiles for deployment and local development
* **Sinatra-Contrib** - useful extensions for Sinatra apps
* A config file - for local development

### So how do I get started?

* Clone the project onto your local machine
* Run `setup.sh`
* Create a Heroku instance
* Add the Heroku instance to your Git remotes
* Deploy!

### The Project Structure Explained

* app/
	* helpers/ - small utility functions
	* lib/ - domain specific objects that are not models
	* models/ - `ActiveRecord::Base` subclasses
	* routes/ - effectively the controllers
* app.rb - starting point of the app
* config/ - contains `config.yml`
* config.rb - used to configure `Compass`
* config.ru - used by Foreman
* db/
* public/ - frontend assets
	* css/
	* font/
	* img/
	* js/
* sass/ - all SCSS files go here
* tests/ - matches each of the directories in `app/`
	* helpers/
	* lib/
	* models/
	* routes/
	* test_helper.rb - include in all your unit tests

---

© Robert Ziehl 2016