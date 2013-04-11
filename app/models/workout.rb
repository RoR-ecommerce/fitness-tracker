class Workout < ActiveRecord::Base
  belongs_to :track, inverse_of: :workouts
  belongs_to :step

  validates :emotion, :sweat, :intensity, :track, :step,
    presence: true

  delegate :name, to: :step

  after_create :update_track

  private

  def update_track
    track.update_attribute :last_step_index, step.position - 1
  end
end
