class User < ApplicationRecord
    has_many :locks, through: :lock_memberships
    validates :email, presence: true, uniqueness: true

    def admin?
        admin
    end

end
