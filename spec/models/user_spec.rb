require 'spec_helper'

describe User do
  describe 'validations with missing attributes' do
    it 'fails with no email' do
      expect(User.new).to have(2).errors_on(:email)
    end

    it 'fails with no provider' do
      expect(User.new).to have(1).error_on(:provider)
    end

    it 'fails with no uid' do
      expect(User.new).to have(1).error_on(:uid)
    end

    it 'fails with invalid email' do
      expect(User.new(email: 'foo')).to have(1).error_on(:email)
    end

    it 'fails with duplicated email' do
      FactoryGirl.create(:user, email: 'foo@bar.com')
      expect(FactoryGirl.build(:user, email: 'foo@bar.com')).to have(1).error_on(:email)
      expect(FactoryGirl.build(:user, email: 'FOO@bar.com')).to have(1).error_on(:email)
    end

    it 'fails with duplicated uid' do
      FactoryGirl.create(:user, uid: '1001')
      expect(FactoryGirl.build(:user, uid: '1001')).to have(1).error_on(:uid)
    end
  end

  describe 'validations with all attributes' do
    it 'is valid' do
      expect(FactoryGirl.build(:user)).to be_valid
    end
  end
end
