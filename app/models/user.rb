class User < ActiveRecord::Base 
  has_many :quizzes
  has_many :questions, through: :quizzes

  include Slugifiable::Instance
  extend Slugifiable::Class

  def authenticate(password)
    password == self.password ? self : false
  end
end