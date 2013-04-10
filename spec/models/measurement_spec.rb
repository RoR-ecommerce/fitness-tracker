require 'spec_helper'

describe Measurement do
  it 'is valid' do
    expect(FactoryGirl.build(:measurement, :in_progress)).to be_valid
  end

  it 'takes name from step' do
    measurement = FactoryGirl.create(:measurement, :in_progress)
    expect(measurement.name).to eq(measurement.step.name)
  end
end
