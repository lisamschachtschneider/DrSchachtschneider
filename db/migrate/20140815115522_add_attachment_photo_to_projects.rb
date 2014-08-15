class AddAttachmentPhotoToProjects < ActiveRecord::Migration
 def change
 	add_attachment :projects, :photo
 end

  def self.up
    change_table :projects do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :projects, :photo
  end
end
