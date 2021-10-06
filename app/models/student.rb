class Student < ApplicationRecord

  def to_s
    "#{first_name} #{last_name}"
  end

  def self.by_name(name)
    Student.all.select do |student|
      student.first_name.downcase == name.downcase || student.last_name.downcase == name.downcase
    end
  end

end