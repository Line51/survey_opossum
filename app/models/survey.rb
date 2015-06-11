class Survey < ActiveRecord::Base
  belongs_to :author
  has_many :questions

  def number_of_results
    Survey.count
  end
end
