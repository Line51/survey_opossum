class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions

  validates :name, uniqueness: true

  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  def number_of_results(id)
    a = Survey.where(author_id: id).all
    a.length
  end
end
