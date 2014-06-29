class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :results, dependent: :destroy
  #TODO: make a validation for having at least two answer but reject the blank ones.
  def to_s
    content
  end
end
