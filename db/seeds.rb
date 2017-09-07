require 'open-uri'
require 'json'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
serialized_ingredients = open(url).read
ingredients = JSON.parse(serialized_ingredients)
ingredients = ingredients["drinks"]

ingredients.each do |ingredient|
  Ingredient.create(name: "#{ingredient['strIngredient1']}")
end



# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
# Ingredient.create(name: "brown sugar")
# Ingredient.create(name: "cinamon")
# Ingredient.create(name: "whiskey")
# Ingredient.create(name: "gin")
# Ingredient.create(name: "vodka")
# Ingredient.create(name: "rum")
# Ingredient.create(name: "tequila")
# Ingredient.create(name: "cachaca")
# Ingredient.create(name: "43")
# Ingredient.create(name: "baileys")
# Ingredient.create(name: "strawberries")
# Ingredient.create(name: "cucumber")
# Ingredient.create(name: "pepper")
# Ingredient.create(name: "orange rind")

