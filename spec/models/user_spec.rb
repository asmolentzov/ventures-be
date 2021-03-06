require 'rails_helper'

describe User do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:image_url) }
    it { should validate_presence_of(:bio) }
  end

  describe 'Relationships' do
    it { should have_many(:events).through(:user_events)}
  end
end
