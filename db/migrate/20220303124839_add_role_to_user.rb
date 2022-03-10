class AddRoleToUser < ActiveRecord::Migration[6.1]
  change_table :users do |t|
    t.boolean :admin, default: false
  end
end
