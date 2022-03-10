class LockMembership < ApplicationRecord
    belongs_to :user
    belongs_to :lock
end
