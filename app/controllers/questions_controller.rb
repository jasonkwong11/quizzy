require 'pry'
require './config/environment'
require 'rack-flash' 

class QuestionsController < ApplicationController

  get '/quizzes/questions/new1' do
    erb :'quizzes/questions/new1'
  end

  post '/quizzes/questions/new1' do
    @question = Question.new(params[:one])
    @question.answer = params[:answer]
    @question.quiz_id = Quiz.last.id
    @question.save
    Quiz.last.questions << @question
    redirect to 'quizzes/questions/new2'
  end

  get '/quizzes/questions/new2' do
    erb :'quizzes/questions/new2'
  end

  post '/quizzes/questions/new2' do
    @question = Question.new(params[:two])
    @question.answer = params[:answer]
    @question.quiz_id = Quiz.last.id
    @question.save
    Quiz.last.questions << @question
    redirect to 'quizzes/questions/new3'
  end

  get '/quizzes/questions/new3' do
    erb :'quizzes/questions/new3'
  end

  post '/quizzes/questions/new3' do
    @question = Question.new(params[:three])
    @question.answer = params[:answer]
    @question.quiz_id = Quiz.last.id
    @question.save
    Quiz.last.questions << @question
    redirect to 'quizzes/questions/new4'
  end

  get '/quizzes/questions/new4' do
    erb :'quizzes/questions/new4'
  end

  post '/quizzes/questions/new4' do
    @question = Question.new(params[:four])
    @question.answer = params[:answer]
    @question.quiz_id = Quiz.last.id
    @question.save
    Quiz.last.questions << @question
    redirect to 'quizzes/questions/new5'
  end

  get '/quizzes/questions/new5' do
    erb :'quizzes/questions/new5'
  end

  post '/quizzes/questions/new5' do
    @question = Question.new(params[:five])
    @question.answer = params[:answer]
    @quiz = Quiz.last
    @question.quiz_id = @quiz.id
    @question.save
    @quiz.questions << @question
    redirect to 'quizzes/'
  end

end