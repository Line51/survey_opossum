class Survey < ActiveRecord::Base
  def number_of_results
    Survey.count
  end
end
