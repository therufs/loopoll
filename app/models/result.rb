class Result < ActiveRecord::Base
  belongs_to :user
  has_many :questions, :through => :users #FIXME: Is this correct?
  belongs_to :answer
end
