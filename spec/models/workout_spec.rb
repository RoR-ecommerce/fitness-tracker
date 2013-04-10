require 'spec_helper'

describe Workout do
  it 'is valid' do
    expect(FactoryGirl.create(:workout, :complete)).to be_valid
  end

  it 'takes name from step' do
    workout = FactoryGirl.create(:workout, :complete)
    expect(workout.name).to eq(workout.step.name)
  end
end
