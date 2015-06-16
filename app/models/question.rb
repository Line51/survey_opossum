class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :responses, dependent: :destroy
  has_many :answer_choices, dependent: :destroy
  accepts_nested_attributes_for :answer_choices,
      reject_if: proc { |attributes| attributes['content'].blank?}, allow_destroy: true


  def move_down
    next_question = Question.where(number: (self.number + 1)).first
    if next_question
      num = self.number
      self.update(number: next_question.number)
      next_question.update(number: num)
    end
  end

  def move_up
    last_question = Question.where(number: (self.number - 1)).first
    if last_question
      num = self.number
      self.update(number: last_question.number)
      last_question.update(number: num)
    end
  end

end
