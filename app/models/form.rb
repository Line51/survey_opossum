class Form < ActiveRecord::Base
  has_many :responses
  belongs_to :survey

  accepts_nested_attributes_for :responses

  #before_save :check_if_required

  def check_if_required
    @questions.each {|question| question.required == true && true }
  end

end
