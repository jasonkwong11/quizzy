
class QuizzesController < ApplicationController
  get '/quizzes/new' do
    if is_logged_in?
      erb :'quizzes/new'
    else
      redirect to '/login'
    end
  end

  post '/quizzes/new' do
    @quiz = Quiz.new(name: params[:quiz][:name])
    date_created = Time.new
    @quiz.date = date_created
    @quiz.user_id = current_user.id
    @quiz.save
    redirect to '/quizzes/questions/new1'
  end

  get '/quizzes/' do #after you finish making a quiz you will be redirected to the /quizzes/ page which shows all quizzes
    @quizzes = Quiz.all
    @user = current_user
    erb :'quizzes'
  end

  post '/quizzes/:id' do
    if is_logged_in?
      @quiz = Quiz.find_by_id(params[:id])
      @questions = @quiz.questions
      erb :'quizzes/show'
    else
      redirect to '/login'
    end
  end

  delete '/quizzes/:id/delete' do
    @quiz = Quiz.find_by(id: params[:id])
    @quiz.delete if current_user.id == @quiz.user_id
    redirect to '/quizzes/'
  end




end