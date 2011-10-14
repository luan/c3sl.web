class Person < ActiveRecord::Base
  validates_presence_of :name

  belongs_to :category

  # def category_enum
  #   items = Array(Category.roots)
  #   result = []
  #   items.each do |root|
  #     result += root.self_and_descendants.map do |i|
  #       if self.new_record? || self.category.move_possible?(i)
  #         ["#{'-' * i.level} #{i.name}", i.id]
  #       end  
  #     end.compact
  #   end
  #   result
  # end
end
