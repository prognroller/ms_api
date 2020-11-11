require 'rails_helper'

RSpec.describe Types::TagsCollection do
  subject { described_class }

  it { is_expected.to have_field(:items).of_type("[Tag!]!") }
end