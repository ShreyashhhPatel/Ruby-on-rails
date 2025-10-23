# There is a hash marks which contains students' names as keys and their marks as values.
# There are two numbers upper_limit and lower_limit. The method marks_in_range should filter
# and return the hash with only those students and marks, where marks are greater than or equal to lower_limit,
# and less than or equal to upper_limit.
#
#
def mark_in_range(marks, upper_limit, lower_limit)
  marks.select do |student, marks|
    (lower_limit..upper_limit).include?(marks)
  end
end
