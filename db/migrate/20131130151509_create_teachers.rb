class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
