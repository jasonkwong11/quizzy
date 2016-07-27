$:.unshift '.'
require 'config/environment'
require 'sinatra'
require_relative 'app/controllers/application_controller'
require_relative 'app/controllers/questions_controller'
require_relative 'app/controllers/quizzes_controller'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use QuizzesController
run ApplicationController
use QuestionsController