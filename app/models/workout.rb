class Workout < ActiveRecord::Base

  belongs_to :track
  belongs_to :step

  validates :emotion, :sweat, :intensity, :track, :step,
    presence: true

  # TODO Move to strong params in controller.
  # attr_accessible :emotion, :intensity, :notes, :sweat, :step, :track

  delegate :name, to: :step

  after_create :update_track

  private

  def update_track
    track.update_attribute :last_step_index, step.position - 1
  end

end
