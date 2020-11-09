require 'rails_helper'

describe Doctor do
  describe 'Relationships' do
    it { should belong_to :hospital }
    it { should have_many :doctor_patients }
    it { should have_many(:patients).through(:doctor_patients) }
  end
end
