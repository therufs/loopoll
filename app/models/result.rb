class Result < ActiveRecord::Base
  belongs_to :user
  has_many :questions, :through => :users
  belongs_to :answer
end
