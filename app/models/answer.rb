class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :results
  #TODO: make a validation for having at least two answer but reject the blank ones.
end
