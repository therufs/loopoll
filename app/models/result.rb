class Result < ActiveRecord::Base
  belongs_to :user
  belongs_to :answer
  belongs_to :question, :through => :user

end
