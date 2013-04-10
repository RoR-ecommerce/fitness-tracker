class Program < ActiveRecord::Base
  has_many :steps, order: :position, dependent: :destroy

  validates :name,
    presence: true
end
