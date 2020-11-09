require 'rails_helper'

describe Hospital do
  describe 'Relationships' do
    it { should have_many :doctors }
    it { should have_many(:patients).through(:doctors) }
  end
end
