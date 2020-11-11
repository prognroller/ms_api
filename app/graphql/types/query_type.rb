module Types
  class QueryType < Types::BaseObject
    field :recipe, Types::RecipeType, null: false do
      argument :id, String, required: true
    end

    def recipe(id: )
      $contentful_client.entry(id, content_type: 'recipe')
    end

    field :recipe_collection, Types::RecipeCollection, null: false do
      argument :limit, Integer, required: false
      argument :skip, Integer, required: false
    end

    def recipe_collection(limit: 100, skip: 0)
      $contentful_client.entries(content_type: 'recipe', limit: 100, skip: 0, order: 'sys.createdAt')
    end
  end
end
