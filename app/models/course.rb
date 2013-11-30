class Course < ActiveRecord::Base
  attr_accessible :name, :career, :description, :teacher_id
  validates_uniqueness_of :name
  belongs_to :teacher
  
  def self.careerCourseList(career="Banking")
    Course.where(:career => career).order("name asc")
  end
end
