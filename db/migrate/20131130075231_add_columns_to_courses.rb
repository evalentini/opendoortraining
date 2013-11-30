class AddColumnsToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :description, :text
  end
end
