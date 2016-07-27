class User < ActiveRecord::Base 
  has_secure_password
  has_many :quizzes
  has_many :questions, through: :quizzes

  include Slugifiable::Instance
  extend Slugifiable::Class

end