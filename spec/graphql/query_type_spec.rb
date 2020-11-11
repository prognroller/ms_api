require 'rails_helper'

RSpec.describe Types::QueryType do
  subject { described_class }

  context 'recipe' do
    it { is_expected.to have_field(:recipe).of_type("Recipe!") }

    describe '#recipe' do
      subject { Types::QueryType.fields['recipe'] }

      it 'accepts an id argument of type String!' do
        expect(subject).to accept_argument(:id).of_type('String!')
      end
    end
  end

  context 'recipe_collection' do
    it { is_expected.to have_field(:recipe_collection).of_type("RecipeCollection!") }

    describe '#recipe_collection' do
      subject { Types::QueryType.fields['recipeCollection'] }

      it 'accepts a limit and an skip argument of type Int' do
        expect(subject).to accept_argument(:limit).of_type('Int')
        expect(subject).to accept_argument(:skip).of_type('Int')
      end
    end
  end
end