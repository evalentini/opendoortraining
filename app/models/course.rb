class Course < ActiveRecord::Base
  attr_accessible :name, :career, :description, :teacher_id
  validates_uniqueness_of :name
  belongs_to :teacher
  
  def self.careerCourseList(career="Banking")
    Course.where(:career => career).order("name asc")
  end
  
  def self.courseRecordingLink
    s3=AWS::S3.new(:access_key_id => 'AKIAICAG7IOKG5O7EDJA', :secret_access_key => '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')
    begin
      recordingLink=s3.buckets['opendoortraining'].objects["testmovie.mp4"].url_for(:get).to_s
    rescue
      recordingLink="#"
    end 
    recordingLink 
  end
  
end
