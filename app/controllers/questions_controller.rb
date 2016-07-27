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

  post "/quizzes/:id/edit1" do
    @quiz = Quiz.find_by_id(params[:id])
    if is_logged_in? && current_user.id == @quiz.user_id
      erb :'quizzes/edits/edit1'
    else
      redirect to '/login'
    end
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

  post "/quizzes/:id/edit2" do
    @quiz = Quiz.find_by_id(params[:id])
    if is_logged_in? && current_user.id == @quiz.user_id
      erb :'quizzes/edits/edit2'
    else
      redirect to '/login'
    end
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
      redirect to '/quizzes/#{quiz.id}/edit2'
    end
  end
#+====

  get '/quizzes/:id/edit3' do
    erb :'quizzes/edits/edit3'
  end

  post "/quizzes/:id/edit3" do
    @quiz = Quiz.find_by_id(params[:id])
    if is_logged_in? && current_user.id == @quiz.user_id
      erb :'quizzes/edits/edit3'
    else
      redirect to '/login'
    end
  end

  patch '/quizzes/:id/edit3' do
    if params[:three].values.include?("")
      flash[:message] = "Please fill in all sections"
      redirect to '/quizzes/:id/edit3'
    else  
      @quiz = Quiz.find_by_id(params[:id])
      @question = @quiz.questions[2]
      @question.text = params[:three][:text]
      @question.answer = params[:answer]
      @question.choice1 = params[:three][:choice1]
      @question.choice2 = params[:three][:choice2]
      @question.choice3 = params[:three][:choice3]
      @question.choice4 = params[:three][:choice4]
      @question.choice5 = params[:three][:choice5]
      @question.save
      @quiz.save
      redirect to '/quizzes/#{quiz.id}/edit4'
    end
  end

  #+++========

  get '/quizzes/:id/edit4' do
    erb :'quizzes/edits/edit4'
  end

  post "/quizzes/:id/edit4" do
    @quiz = Quiz.find_by_id(params[:id])
    if is_logged_in? && current_user.id == @quiz.user_id
      erb :'quizzes/edits/edit4'
    else
      redirect to '/login'
    end
  end

  patch '/quizzes/:id/edit4' do
    if params[:four].values.include?("")
      flash[:message] = "Please fill in all sections"
      redirect to '/quizzes/:id/edit4'
    else  
      @quiz = Quiz.find_by_id(params[:id])
      @question = @quiz.questions[3]
      @question.text = params[:four][:text]
      @question.answer = params[:answer]
      @question.choice1 = params[:four][:choice1]
      @question.choice2 = params[:four][:choice2]
      @question.choice3 = params[:four][:choice3]
      @question.choice4 = params[:four][:choice4]
      @question.choice5 = params[:four][:choice5]
      @question.save
      @quiz.save
      redirect to '/quizzes/#{quiz.id}/edit5'
    end
  end

  #=========

  get '/quizzes/:id/edit5' do
    erb :'quizzes/edits/edit5'
  end

  post "/quizzes/:id/edit5" do
    @quiz = Quiz.find_by_id(params[:id])
    if is_logged_in? && current_user.id == @quiz.user_id
      erb :'quizzes/edits/edit5'
    else
      redirect to '/login'
    end
  end

  patch '/quizzes/:id/edit5' do
    if params[:five].values.include?("")
      flash[:message] = "Please fill in all sections"
      redirect to '/quizzes/:id/edit5'
    else  
      @quiz = Quiz.find_by_id(params[:id])
      @question = @quiz.questions[4]
      @question.text = params[:five][:text]
      @question.answer = params[:answer]
      @question.choice1 = params[:five][:choice1]
      @question.choice2 = params[:five][:choice2]
      @question.choice3 = params[:five][:choice3]
      @question.choice4 = params[:five][:choice4]
      @question.choice5 = params[:five][:choice5]
      @question.save
      @quiz.save
      redirect to '/quizzes/#{quiz.id}/edit5'
    end
  end

end