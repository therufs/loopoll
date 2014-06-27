class Answer < ActiveRecord::Base
  belongs_to :question
  #TODO: make a validation for having at least two answer but reject the blank ones.
end
