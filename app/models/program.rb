class Program < ActiveRecord::Base
  has_many :steps, order: :position, dependent: :destroy

  validates :name,
    presence: true

  # TODO Move to strong params in controller.
  # attr_accessible :name

end
