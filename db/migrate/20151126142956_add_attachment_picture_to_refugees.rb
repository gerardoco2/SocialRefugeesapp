class AddAttachmentPictureToRefugees < ActiveRecord::Migration
  def self.up
    change_table :refugees do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :refugees, :picture
  end
end
