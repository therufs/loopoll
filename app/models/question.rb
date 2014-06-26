class Question < ActiveRecord::Base
  belongs_to :user
  has_many :results, :through => :users
  has_many :answers
end
