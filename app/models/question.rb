class Question < ActiveRecord::Base
  belongs_to :user
  has_many :results, :through => :user
  has_many :answers
end
