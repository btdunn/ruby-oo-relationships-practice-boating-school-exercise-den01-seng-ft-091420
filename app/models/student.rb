class Student
  
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test (name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

  def all_instructors
    BoatingTest.all.select do |boating_test|
      boating_test.student == self
    end
  end

end
