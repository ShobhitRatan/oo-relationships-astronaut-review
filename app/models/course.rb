class Course 
    attr_reader :course_code, :dept, :course_num, :course_description 
    @@all = []

    def initialize(course_code, dept, course_num, course_description) 
        @course_code = course_code 
        @dept = dept 
        @course_num = course_num 
        @course_description = course_description 
        Course.all << self 
    end 
    def self.all 
        @@all 
    end 
end 
