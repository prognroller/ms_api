require 'rails_helper'

RSpec.describe Types::RecipeCollection do
  subject { described_class }

  it { is_expected.to have_field(:items).of_type("[Recipe!]!") }

  it { is_expected.to have_field(:total).of_type("Int!") }
end