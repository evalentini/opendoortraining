class AddAvatarColumnToTeachers < ActiveRecord::Migration
  def self.up
    add_attachment :teachers, :avatar
  end

  def self.down
    remove_attachment :teachers, :avatar
  end
end
