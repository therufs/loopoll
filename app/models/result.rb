class Result < ActiveRecord::Base
  validate :uniqueness_of_result
  belongs_to :user
  belongs_to :answer

  # def uniqueness_of_result
  #   if user
  # end



end
