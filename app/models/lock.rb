class Lock < ApplicationRecord
    has_many :users, through: :lock_memberships
    validates :name, presence: true


    
end
