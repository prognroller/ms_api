require 'rails_helper'

RSpec.describe Types::UserType do
  subject { described_class }

  it { is_expected.to have_field(:name).of_type("String!") }
end