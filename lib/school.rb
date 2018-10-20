# code here!
class School
  attr_accessor :roster

  def initialize(school)
    @school = school
    @roster = {}
  end

  def add_student(name, grade)
    if roster[grade]
      roster[grade] << name
    else
      roster[grade] = []
      roster[grade] << name
    end
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.sort_by {|grade, names| names}
    roster_sorted = {}
    roster.each {|i| roster_sorted[i[0]] = i[1]}
    roster = roster_sorted
  end
end
