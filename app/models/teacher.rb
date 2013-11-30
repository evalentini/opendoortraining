class Teacher < ActiveRecord::Base
  attr_accessible :bio, :email, :name, :avatar
  validates_uniqueness_of :name
  validates_presence_of :bio, :email, :name, :avatar
  
  has_many :courses
  
  
  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  
  def self.teacherOptions
    options={}
    Teacher.order("name asc").each {|teacher| options[teacher.id]=teacher.name }
    result=[]
    options.each {|k,v| result << [v, k]}
    return result
  end
  
end
