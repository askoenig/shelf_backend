### SHELF.
Search millions of books, add selected titles to your own personal virtual bookshelf, record your thoughts about each book and assign your books to one or more Shelves that you create!

### MOTIVATION
I love books, and while I appreciate what other services have built to help readers keep track of the books in their lives, I've always been sad to see that most of these apps have all the visual appeal of an excel spreadsheet with a smattering of CSS. I built Shelf to be an aesthetically pleasing and fun way to keep track of the books in your life.

### VIDEO EXAMPLE
Here's a link to a vid demo if you'd like to see the project in action:

https://youtu.be/biO_Q5wK4Tw

### TECH
I built this project using:

- Ruby
- JavaScript
- React.js
- Google Books API
- Vanilla CSS

The frontend is React.js and can be found here: https://github.com/askoenig/shelf_frontend

### Rails Setup

git clone 
cd shelf_backend
bundle install
rails db:create db:migrate
rails s (start rails server)
Now you can should be able to go to the url endpoints

http://localhost:3000
http://localhost:3000/users
http://localhost:3000/books
http://localhost:3000/userbooks


### Creating A Rails Project
The project was originally generated with these commands:

- Create folder
mkdir best-app

- cd into that folder
cd best-app

- Update Rails Version
rails -v
gem update rails

- Create new rails API with a PostgreSQL database
rails new my_api --api --database=postgresql
cd my_api
rails g scaffold Book title:string (etc)

- Create a Git repo for Rails app


### API
I am using the Google Books API to allow users to search for books. Because I am searching on click (via the "Search" button on hitting "Enter" on hte keyboard) as opposed to live re-rendering search results on each individual keystroke, I don't have to use an API key (Google limits their API key usage pretty severely).

### CREDITS
Shout out to this CodePen which inspired me to create this project:

https://codepen.io/kzf/pen/vEYVmL?page=2
