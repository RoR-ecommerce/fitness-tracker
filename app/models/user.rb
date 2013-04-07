class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:ufc]

  validates :uid,
    presence: true,
    uniqueness: { scope: :provider }

  validates :email,
    presence: true,
    uniqueness: { case_sensitive: false }

  validates :provider,
    presence: true

  class << self
    def from_omniauth!(auth)
      where(auth.slice(:provider, :uid)).first_or_create! do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email
      end
    end
  end

end
