require 'spec_helper'

describe Track do
  it 'is valid' do
    expect(FactoryGirl.build(:track)).to be_valid
  end

  describe '#next_step' do
    let(:program) do
      program = FactoryGirl.create(:program)
      FactoryGirl.create(:step, :day_1, program: program)
      FactoryGirl.create(:step, :day_2, program: program)
      FactoryGirl.create(:step, :day_3, program: program)
      program
    end

    it 'in progress' do
      track = FactoryGirl.create(:track, :in_progress, program: program)
      expect(track.next_step.track).to eq(track)
      expect(track.next_step.name).to eq('Cardio Cross Train')
    end

    it 'initial' do
      track = FactoryGirl.create(:track, program: program)
      expect(track.next_step.track).to eq(track)
      expect(track.next_step.name).to eq('Take Measurements')
    end

    it 'complete' do
      track = FactoryGirl.create(:track, :complete, program: program)
      expect(track.next_step).to be_nil
    end
  end

  describe '#steps' do
    it do
      program = FactoryGirl.create(:program)
      step_day_1 = FactoryGirl.create(:step, :day_1, program: program)
      step_day_2 = FactoryGirl.create(:step, :day_2, program: program)

      track = FactoryGirl.create(:track, :in_progress, program: program)
      workout = FactoryGirl.create(:workout, track: track, step: step_day_2)
      measurement = FactoryGirl.create(:measurement, track: track, step: step_day_1)

      expect(track.steps).to eq([measurement, workout])
    end
  end
end
