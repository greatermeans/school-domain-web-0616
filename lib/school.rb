require 'pry'

class School
  attr_accessor :name


  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name=nil,grade=nil)
    @name = name
    @grade = grade
    @roster[@grade] ||= []
    @roster[@grade] << @name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    roster.map {|grade,grade_array| grade_array.sort! }
    roster.sort.to_h
  end

  def roster
    @roster
  end

end 