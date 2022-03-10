class LockPolicy < ApplicationPolicy
    
    def update?
        user.admin?
    end

    def unlock?
        user.admin? || LockMembership.where(lock_id: record.id, user_id: user.id).any?
    end
    
    def create?
        user.admin?
    end

end