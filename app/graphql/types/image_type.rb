module Types
  class ImageType < Types::BaseObject
    field :title, String, null: false

    field :description, String, null: true

    field :url, String, null: false
  end
end