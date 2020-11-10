module Types
  class RecipeType < Types::BaseObject
    field :id, String, null: false

    def id
      object.id
    end

    field :title, String, null: false

    field :description, String, null: false

    field :photo, Types::ImageType, null: false

    field :chef, Types::UserType, null: true

    field :tags_collection, Types::TagsCollection, null: true

    def tags_collection
      object.tags
    end
  end
end