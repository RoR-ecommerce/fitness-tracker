class Photo < ActiveRecord::Base

  belongs_to :owner, polymorphic: true

  attr_accessible :image

end
