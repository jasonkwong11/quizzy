# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [X ] Use ActiveRecord for storing information in a database: ActiveRecord was used for the database
- [X] Include more than one model class (list of model class names e.g. User, Post, Category): Modes include: question.rb, quiz.rb, and user.rb
- [X] Include at least one has_many relationship (x has_many y e.g. User has_many Posts): Each User has_many quizzes and each Quiz has many Questions
- [X] Include user accounts: Users sign up and log into their accounts to view the content. 
- [X] Ensure that users can't modify content created by other users: To edit a quiz, the current_user's id must match the user_id of the quiz object. This ensures only the creator of the quiz can edit it's questions. The same is true for the delete functionality.
- [X] Include user input validations: This app uses bcrypt and the User model has_secure_password to validate password.
- [X] Display validation failures to user with error message (example form URL e.g. /posts/new): Error messages pop up if user signs up or logs in with with blank input fields
- [X] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code: Complete

Confirm
- [X] You have a large number of small Git commits
- [X] Your commit messages are meaningful
- [X] You made the changes in a commit that relate to the commit message
- [X] You don't include changes in a commit that aren't related to the commit message
