class Step < ActiveRecord::Base
  acts_as_list scope: :program

  belongs_to :program

  validates :name, :step_class, :day, :position, :program,
    presence: true

  # TODO Move to strong params in controller.
  # attr_accessible :day, :name, :position, :step_class

end
