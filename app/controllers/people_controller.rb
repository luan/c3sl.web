class PeopleController < ApplicationController
  def index
    @categories = Category.where(:parent_id => nil)
    if params[:category_id]
      category = Category.find(params[:category_id])
      if category.children.empty?
        categories = [category]
      else
        categories = category.children
      end
      people = []
      categories.each do |category|
        people += Person.where(:category_id => category.id)
      end
      @people = people.group_by {|person| person.category_id}
    end
  end
end
