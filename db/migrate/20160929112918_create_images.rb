class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :prototype_id
      t.string  :file
      t.integer :status
      t.timestamps
    end
  end
end
