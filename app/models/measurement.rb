class Measurement < ActiveRecord::Base
  belongs_to :track, inverse_of: :measurements
  belongs_to :step

  has_one :front_photo, as: :owner
  has_one :side_photo, as: :owner
  has_one :back_photo, as: :owner

  accepts_nested_attributes_for :front_photo, :side_photo, :back_photo

  validates :arms, :chest, :hips, :thighs, :waist, :weight, :track, :step,
    presence: true

  delegate :name, to: :step

  after_create :update_track

  private

  def update_track
    track.update_attribute(:last_step_index, step.position - 1)
  end
end
