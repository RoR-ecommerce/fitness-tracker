class Step < ActiveRecord::Base
  acts_as_list scope: :program

  belongs_to :program

  validates :name, :step_class, :day, :position, :program,
    presence: true
end
