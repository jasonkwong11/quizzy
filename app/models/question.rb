class Question < ActiveRecord::Base 
  belongs_to :quiz

  include Slugifiable::Instance
  extend Slugifiable::Class

end