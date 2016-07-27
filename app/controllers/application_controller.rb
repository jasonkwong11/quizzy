require 'pry'
require './config/environment'
require 'rack-flash' 

class ApplicationController < Sinatra::Base
register Sinatra::ActiveRecordExtension

  configure do
    enable :sessions unless test?
    set :session_secret, "secret"

    set :public_folder, 'public'
    set :views, 'app/views'
  end

use Rack::Flash

  get '/' do
    erb :home
  end

  get '/signup' do
      if !is_logged_in? 
        erb :signup
      else 
        redirect to '/index'
      end
    end

  post '/signup' do
    if params[:user].values.include?("") || !params[:type]

      flash[:message] = "Please fill in all sections"
      redirect to '/signup'
    else
      @user = User.new(params[:user])
      @user.save
      @session = session
      @session[:id] = @user.id
    redirect to '/index'
    end
  end

  get '/login' do
    if is_logged_in?
      redirect to '/index'
    else
      erb :login
    end
  end

  post '/login' do
    @user = User.find_by(name: params[:name], password: )
    if @user && user.authenticate(params[:password])
      session[:id] = @user.id
      redirect to '/index'
    else
      flash[:message] = "Error. Please try again."
      erb :login
    end
  end

  get '/index' do
  @quizzes = Quiz.all #in the index view, make links of each quiz's name that redirects to the form to take the quiz
    erb :index
  end

  post '/index' do

  end

  get '/logout' do
    session.clear
    redirect to '/'
  end

#Helper methods
helpers do
  def current_user
    User.find(session[:id])
  end

  def is_logged_in?
    true if session[:id]
  end
end


end
