require 'rails_helper'

RSpec.describe Types::RecipeType do
  subject { described_class }

  it { is_expected.to have_field(:id).of_type("String!") }

  it { is_expected.to have_field(:title).of_type("String!") }

  it { is_expected.to have_field(:description).of_type("String!") }

  it { is_expected.to have_field(:photo).of_type("Image!") }

  it { is_expected.to have_field(:chef).of_type("User") }

  it { is_expected.to have_field(:tags_collection).of_type("TagsCollection") }
end