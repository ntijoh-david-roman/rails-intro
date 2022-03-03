class AddDefaultValueToUnlocked < ActiveRecord::Migration[6.1]
  change_column_default :locks, :unlocked, to: true
end
