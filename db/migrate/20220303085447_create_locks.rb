class CreateLocks < ActiveRecord::Migration[6.1]
  def change
    create_table :locks do |t|
      t.boolean :unlocked
      t.string :name

      t.timestamps
    end
  end
end
