class Course < ActiveRecord::Base
  attr_accessible :name, :career
  validates_uniqueness_of :name
  
  def self.careerCourseList(career="Banking")
    Course.where(:career => career).order("name asc")
  end
end
