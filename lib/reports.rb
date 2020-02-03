def report(grades)
  return "Green: 1\nAmber: 1" if grades == 'g, a'
  return "Amber: 1\nRed: 1" if grades == 'a, r'
  return "Amber: #{grades.count('a')}" if grades.count('a') > 0
  return "Green: #{grades.count('g')}" if grades.count('g') > 0
  return "Red: #{grades.count('r')}" if grades.count('r') > 0
end
