require 'pry'
require './config/environment'
require 'rack-flash' 

class QuestionsController < ApplicationController

  get '/quizzes/questions/new1' do
    erb :'quizzes/questions/new1'
  end

  post '/quizzes/questions/new1' do
    @question = Question.new(params[:one])
    @quiz = Quiz.last
    @question.answer = params[:answer]
    @question.quiz_id = @quiz.id
    @question.save
    @quiz.questions << @question
    redirect to 'quizzes/questions/new2'
  end

  get '/quizzes/questions/new2' do
    erb :'quizzes/questions/new2'
  end

  post '/quizzes/questions/new2' do
    @question = Question.new(params[:two])
    @quiz = Quiz.last
    @question.answer = params[:answer]
    @question.quiz_id = @quiz.id
    @question.save
    @quiz.questions << @question
    redirect to 'quizzes/questions/new3'
  end

  get '/quizzes/questions/new3' do
    erb :'quizzes/questions/new3'
  end

  post '/quizzes/questions/new3' do
    @question = Question.new(params[:three])
    @quiz = Quiz.last
    @question.answer = params[:answer]
    @question.quiz_id = @quiz.id
    @question.save
    @quiz.questions << @question
    redirect to 'quizzes/questions/new4'
  end

  get '/quizzes/questions/new4' do
    erb :'quizzes/questions/new4'
  end

  post '/quizzes/questions/new4' do
    @question = Question.new(params[:four])
    @quiz = Quiz.last
    @question.answer = params[:answer]
    @question.quiz_id = @quiz.id
    @question.save
    @quiz.questions << @question
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
    redirect to '/quizzes/'
  end
######============EDIT ROUTES=============


  get '/quizzes/:id/edit1' do
    erb :'quizzes/edits/edit1'
  end

  patch '/quizzes/:id/edit1' do
    if params[:one].values.include?("")
      flash[:message] = "Please fill in all sections"
      redirect to '/quizzes/:id/edit1'
    else  
      @quiz = Quiz.find_by_id(params[:id])
      @question = @quiz.questions[0]
      @question.text = params[:one][:text]
      @question.answer = params[:answer]
      @question.choice1 = params[:one][:choice1]
      @question.choice2 = params[:one][:choice2]
      @question.choice3 = params[:one][:choice3]
      @question.choice4 = params[:one][:choice4]
      @question.choice5 = params[:one][:choice5]
      @question.save
      @quiz.save
      redirect to '/quizzes/#{quiz.id}/edit2'
    end
  end

  get '/quizzes/:id/edit2' do
   @quiz = Quiz.find_by_id(params[:id])
    erb :'quizzes/edits/edit2'
  end

  patch '/quizzes/:id/edit2' do
    if params[:two].values.include?("")
      flash[:message] = "Please fill in all sections"
      redirect to '/quizzes/:id/edit2'
    else  
      @quiz = Quiz.find_by_id(params[:id])
      @question = @quiz.questions[1]
      @question.text = params[:two][:text]
      @question.answer = params[:answer]
      @question.choice1 = params[:two][:choice1]
      @question.choice2 = params[:two][:choice2]
      @question.choice3 = params[:two][:choice3]
      @question.choice4 = params[:two][:choice4]
      @question.choice5 = params[:two][:choice5]
      @question.save
      @quiz.save
      redirect to '/quizzes/:id/edit3'
    end
  end

end