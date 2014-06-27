require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

    test "question due date in the future is valid" do
      q1 = Question.create(
              content: "test1",
              duedate: DateTime.now + 1.day
              )
      assert q1.valid?
      refute q1.errors[:duedate].any?
    end

    test "question due date in the past is invalid" do
      q2 = Question.create(
              content: "test2",
              duedate: DateTime.now - 1.day
              )
      refute q2.valid?
      assert q2.errors[:duedate].any?
    end

    end

    def created
      where(user_id: @current_user)
    end

    def answered
      results.where(user_id: @current_user)
    end

    def to_answer
      where.not(user_id: @current_user)
end
