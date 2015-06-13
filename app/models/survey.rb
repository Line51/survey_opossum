class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions, dependent: :destroy
  has_many :forms

  validates :name, uniqueness: true

  accepts_nested_attributes_for :questions, reject_if: proc { |attributes| attributes['text'].blank?},
      allow_destroy: true

  def number_of_results(id)
    a = Form.where(survey_id: id).all
    a.length
  end
end
