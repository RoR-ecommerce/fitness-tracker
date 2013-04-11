class Track < ActiveRecord::Base
  belongs_to :program
  belongs_to :user, inverse_of: :tracks

  has_many :workouts, inverse_of: :track, dependent: :destroy
  has_many :measurements, inverse_of: :track, dependent: :destroy

  validates :user, :program,
    presence: true

  def next_step
    @next_step ||= if next_step_index
      step = program.steps[next_step_index]
      step.step_class.constantize.new\
        step: step,
        track: self
    end
  end

  def steps
    (workouts + measurements).sort do |a, b|
      a.step.position <=> b.step.position
    end
  end

  private

  def next_step_index
    if last_step_index.nil?
      0
    elsif last_step_index == program.steps.size - 1
      nil
    else
      last_step_index + 1
    end
  end
end
