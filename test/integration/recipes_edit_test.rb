require 'test_helper'

class RecipesEditTest < ActionDispatch::IntegrationTest
  
  def setup 
    @chef = Chef.create!(chefname: "Whitny", email: "whitny@example.com")
    @recipe = Recipe.create(name: "vegetable saute", description: "great veggie saute", chef: @chef)
  end 
  
  test "reject invalid recipe update" do 
    get edit_recipe_path(@recipe)
    assert_template 'recipes/edit'
    patch recipe_path(@recipe), params: { recipe: { name: " ", description: "some description"}}
    assert_template 'recipes/edit'
    assert_select "h2.panel-title"
    assert_select "div.panel-body"
  end 
  
  test "successfully edit a recipe" do 
    
  end 
end
