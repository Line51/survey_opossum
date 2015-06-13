class Form < ActiveRecord::Base
  has_many :responses, dependent: :destroy
  belongs_to :survey

  accepts_nested_attributes_for :responses

end
