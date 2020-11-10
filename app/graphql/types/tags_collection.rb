module Types
  class TagsCollection < Types::BaseObject
    field :items, [Types::TagType], null: false

    def items
      object
    end
  end
end
