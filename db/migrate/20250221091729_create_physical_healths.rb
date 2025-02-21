class CreatePhysicalHealths < ActiveRecord::Migration[8.0]
  def change
    create_table :physical_healths do |t|
      t.string :types

      t.timestamps
    end
  end
end
