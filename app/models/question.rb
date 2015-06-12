class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :responses

  validates :text, presence: true

  def move_down
    next_question = Question.where(number: (self.number + 1))
    num = self.number
    self.update(number: next_question.number)
    next_question.update(number: num)
  endz

  def move_up
    last_question = Question.where(number: (self.number - 1))
    num = self.number
    self.update(number: last_question.number)
    last_question.update(number: num)
  end

end
