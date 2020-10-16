# README

# _Volunteer Tracker_

_16 October 2020_

#### _Application for a hypothetical food store to list their products and reviews of such products.  A practice in setting up a one to many relationship with Rails_

#### By _**Donny Mays**_

## Setup/Installation Requirements

- In terminal/command line, navigate into the directory where you would like to create a new Rails project.
- Clone this project using the 'git clone ' command in terminal/command line while in the desired directory.
- Navigate to the cloned directory and run 'bundle' in your command line to download gem dependencies.
- Run rake db:setup to create and populate the database.
- To view in a browser, in the terminal run 'rails s' 
- Open a browser and type the localhost port for the rails server (ex:localhost:3000)

## Description
_This is a project for Week 4 of the Ruby block of Epicodus.  Prompt can be seen below._

_The original instructions for the assignment include:_
You've in the running for a freelance development job as the developer for Mario's Speciality Food Products (or another fictional company of your choosing). First, Mario wants to make sure you're the right person for the job. He's asked you for an MVP and wants it by 5:00 tonight. The stakes are higher than usual, since Mario's old site had thousands of unique visitors each day. If you can get the job, this is a great way to increase your profile as a developer.

In particular, Mario is concerned about the information in his database being correct; your goal for today is to have the most comprehensive validations and callbacks to ensure information is properly saved and formatted in the database.

Database
The site should have functionality to review products so your database should include a one-to-many relationship between Products and Reviews. All products must have a name, cost and country_of_origin. All reviews should have an author, content_body and rating. (A rating can be a number between 1 and 5.) You can include other fields of your choosing as well.

Landing Page
The landing page should include basic information about the company and should allow users to easily navigate to other areas of the site. This page should also include the three most recently added products and the product with the most reviews. See more information in the Scopes section below.

Products
The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

Users should be able to add, update and delete new products. Don't worry about user authentication. Assume everyone who visits the site is an admin for now.
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating. That's included in the further exploration section.)
Users should be able to add a review to a product.
Validations
Your site should include validations for the following:

All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.
Callbacks
Your site should include a callback for the following:

All products are automatically titleized (first letter of each word capitalized) before they are saved to the database.
Seeding
Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.


## Specifications
| Spec     | Story |
| -------- | -------- |
| 1 | Users should be able to add, update and delete new products. |
| 2 | Users should be able to click an individual product to see its detail page.|
| 3 | Users should be able to add a review to a product.|
| 4 | All fields should be filled out, including rating. |
| 5 | Rating can only be an integer between 1 and 5.|
| 6 | The review's content_body must be between 50 and 250 characters.|
| 7 | All products are automatically titleized (first letter of each word capitalized) before they are saved to the database.|
| 8 | Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.|

## Known Bugs
_There are no known bugs at this time_

## Technologies Used
* Ruby
* Rails
* HTML
* CSS
* Bootstap CSS framework
* Postgres
* psql
* Gems: rspec, pry, sinatra, capybara, faker

### License
Copyright (c) 2020 **_Donny Mays_**

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.