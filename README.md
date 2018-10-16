# Movie Discovery App
When first visiting the movie discovery application, the user is presented
with a list of current popular tv shows and a search bar.  Users can search
for shows that have titles related to their search queries. The displayed tv show
posters can be clicked on to view specific details of the show, such as: the creator,
genre, number of seasons, number of episodes, title, and an overview/summary.

## Purpose
This application was a 1 week take-home assignment designed to mimic common
interview practices in software development. Technology choices for building
this application were up to me as long as I could justify the choices I made.
The minimum requirements of this application was to use a backend that communicates
with TMDB (The Movie Database) api to present users with popular tv shows and give
users a search bar to find tv show titles of their choosing. The tv shows needed to
be clickable and direct the user to a page with details about each show.

## Technologies Used
 Ruby on Rails framework version 5.2:
 -I chose to use the Rails framework for multiple reasons. Rails is one of my biggest
 strengths right now in web development, and I knew it would certainly
 be able to handle the requirements of this assignment. I also had a limited amount
 of time to finish this application, and learning a new framework to solve the problem
 seemed counter-intuitive given that Rails would certainly be able to handle the job. However, the
 application requirements for this assignment did not call for any persistent
 data. Knowing this, one might think Rails is overkill for this project, but looking into
 the future of what this app could progress into, a database is always going
 to be needed down the line. Once users/authentication is added, having a database
 will solve a lot of my problems and I plan to extend this app in the future.

 Rspec for testing:
 Rspec is what I am most comfortable with when it comes to testing code, so this was
 an easy decision for me.

 Httparty for API calls:
 This application uses TMDB (The Movie Database) API in order to grab tv show information
 and posters. I was familiar with using Httparty prior to this application, so considering
 the time limit, going with a familiar library here was the clear choice.

 Bootstrap:
 For the minimal requirements of this application, Bootstrap may seem a little overkill,
 However, I am always thinking towards the future and how this would make constructing my views easier
 to do and save me time later down the road.

 Heroku for hosting:
 Heroku is an amazing hosting service, especially when it comes to Rails applications.
 It makes deploying an app to production as simple as a few commands in the command line.
 Heroku was the obvious choice for hosting my Rails app.

## Screenshots

### Home Page
![popular-tv-shows](https://user-images.githubusercontent.com/28276414/47040747-da448780-d13b-11e8-9a29-286fdf2c84a0.png)

### Details Page
![show-details](https://user-images.githubusercontent.com/28276414/47040753-e92b3a00-d13b-11e8-80a8-25dc92c0178e.png)

## Application Setup
-Fork/clone this repository.

Rails version: 5.2
Ruby version: 2.4.0

-Gems used:
font-awesome-rails
animate-rails
figaro
jquery-rails
bootstrap ~> 4.1.3
httparty ~> 0.13
rails ~> 5.2.1
puma ~> 3.11
sass-rails ~> 5.0
uglifier >= 1.3.0
coffee-rails ~> 4.2
turbolinks ~> 5
jbuilder ~> 2.5
bootsnap >= 1.1.0, require: false

development:  sqlite3
production: pg

development/testing:
rspec-rails ~> 3.8
rails-controller-testing

-bundle install

-You will need to acquire your own API key for TMDB. link: https://developers.themoviedb.org

-Once you have an API key, setup figaro by typing "bundle exec figaro install" on command line.
Then add API key to application.yml like this: API_KEY: 'your api key'
-If you want to use Heroku for hosting, make sure to add your api key to Heroku config vars.

## Running Test Suite
type "rspec spec" on the command line. Make sure you are in root folder.
