class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:ufc]

  validates :uid,
    presence: true,
    uniqueness: { scope: :provider }

  validates :email,
    presence: true,
    format: Devise.email_regexp,
    uniqueness: { case_sensitive: false }

  validates :provider,
    presence: true

  has_many :tracks

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
