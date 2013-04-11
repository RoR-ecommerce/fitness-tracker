class Step < ActiveRecord::Base
  acts_as_list scope: :program

  belongs_to :program, inverse_of: :steps

  validates :name, :step_class, :day, :position, :program,
    presence: true
end
