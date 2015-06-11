class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :responses

  # validates :survey_id, presence: true
  # validates :text, presence: true
end
