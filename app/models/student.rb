class Student 
    attr_reader :studentID, :firstName, :lastName, :address, :DOB, :Credits, :GPA 
    @@all = []

    def initialize(studentID, firstName, lastName, address, DOB, Credits, GPA) 
        @studentID = studentID 
        @firstName = firstName 
        @lastName = lastName 
        @address = address 
        @DOB = DOB 
        @Credits = Credits 
        @GPA = GPA 
        Student.all << self 
    end 
    def self.all 
        @@all 
    end 
end 