class Program < ActiveRecord::Base
  has_many :steps, inverse_of: :program, order: :position, dependent: :destroy

  validates :name,
    presence: true
end
