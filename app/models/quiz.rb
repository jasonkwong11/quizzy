class Quiz < ActiveRecord::Base 
  belongs_to :user
  has_many :questions

  include Slugifiable::Instance
  extend Slugifiable::Class

end