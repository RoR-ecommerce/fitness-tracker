require 'spec_helper'

describe Step do
  it 'is valid' do
    expect(FactoryGirl.build(:step, :day_1)).to be_valid
  end
end
