require 'spec_helper'

describe Program do
  it 'is valid' do
    expect(FactoryGirl.build(:program)).to be_valid
  end
end
