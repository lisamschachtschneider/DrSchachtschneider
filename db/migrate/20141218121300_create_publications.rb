class CreatePublications < ActiveRecord::Migration
  def change
    create_table :publications do |t|
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end
  end
end
