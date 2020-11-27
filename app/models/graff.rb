class Graff < ApplicationRecord
   def self.chart_date
      order(result_date: :asc).pluck('result_date', 'result').to_h   
   end
end
