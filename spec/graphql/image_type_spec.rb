require 'rails_helper'

RSpec.describe Types::ImageType do
  subject { described_class }

  it { is_expected.to have_field(:title).of_type("String!") }

  it { is_expected.to have_field(:description).of_type("String") }

  it { is_expected.to have_field(:url).of_type("String!") }
end