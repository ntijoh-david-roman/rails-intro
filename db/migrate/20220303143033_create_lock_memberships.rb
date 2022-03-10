class CreateLockMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :lock_memberships do |t|
      t.belongs_to :user
      t.belongs_to :lock
      t.timestamps
    end
  end
end
