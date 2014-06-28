class Result < ActiveRecord::Base
  validates_uniqueness_of :user_id, scope: :answer_id

  belongs_to :user
  belongs_to :answer
end
