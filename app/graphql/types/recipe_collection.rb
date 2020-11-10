module Types
  class RecipeCollection < Types::BaseObject
    field :items, [Types::RecipeType], null: false

    field :total, Integer, null: false
  end
end
