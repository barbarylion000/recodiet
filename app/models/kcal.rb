class Kcal < ApplicationRecord
validates :weight1, presence: true
validates :height1, presence: true
validates :age1, presence: true
  
  
  def bmr1_keisan
    (13.397 * weight1 + 4.799 * height1 - 5.677 * age1 + 88.362)
  end
  
  def tdee1_keisan
    (bmr1_keisan * 1.3)
  end
end
