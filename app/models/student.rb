class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(name)
    Student.all.select do |student|
      student.first_name == name || student.last_name == name
    end
  end

end