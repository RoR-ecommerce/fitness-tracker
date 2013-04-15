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

  has_many :tracks, inverse_of: :user

  class << self
    def from_omniauth!(auth)
      find_with_omniauth(auth) || create_with_omniauth!(auth)
    end

    private

    def find_with_omniauth(auth)
      user = where(auth.slice(:provider, :uid)).first
      user.update_attributes!(
        email: auth.info.email,
        first_name: auth.info.first_name,
        last_name: auth.info.last_name) if user
      user
    end

    def create_with_omniauth!(auth)
      create!(
        provider: auth.provider,
        uid: auth.uid,
        email: auth.info.email,
        first_name: auth.info.first_name,
        last_name: auth.info.last_name)
    end
  end

end
