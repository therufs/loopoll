class Question < ActiveRecord::Base
  validates :content, :duedate, presence: true
  validate  :future_due_date
  #TODO: validate that a question has at least 2 answers

  belongs_to :user
  has_many :results, :through => :users
  has_many :answers

  def future_due_date #TODO: test for this validation
    if duedate < DateTime.now
      errors.add(:duedate_invalid, ", poll must end in the future.")
    end
  end
end
