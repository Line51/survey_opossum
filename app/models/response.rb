class Response < ActiveRecord::Base
  belongs_to :question
  belongs_to :form

  validates :answer, presence: true, if: Proc.new { |a| a.question.required }

end
