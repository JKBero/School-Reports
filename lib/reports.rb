def report(grades)
  p grades.count('a')
  return "Amber: #{grades.count('a')}" if grades.count('a') > 0
  return "Green: #{grades.count('g')}" if grades.count('g') > 0
  return "Red: 1" if grades == 'r'
end
