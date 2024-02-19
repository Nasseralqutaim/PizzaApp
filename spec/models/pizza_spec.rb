require 'rails_helper'

RSpec.describe Pizza, type: :model do
  context 'validations' do
    it 'is valid with valid attributes' do
      expect(build(:pizza)).to be_valid
    end

    it 'is not valid without a name' do
      expect(build(:pizza, name: nil)).not_to be_valid
    end
  end

  describe '#custom_method' do
    it 'performs expected behavior' do
      pizza = create(:pizza)
     
    end
  end
end