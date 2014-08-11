class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :body
      t.boolean :published
      t.integer :tracking_id

      t.timestamps
    end
    add_index :projects, :tracking_id, unique: true
  end
end
