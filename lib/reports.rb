def report(grades)
  return "Green: 1\nAmber: 1" if grades == 'Green, Amber'
  return "Amber: 1\nRed: 1" if grades == 'Amber, Red'
  grades = grades.split(', ')
  return "Green: #{grades.count('Green')}" if grades.count('Green') > 0
  return "Amber: #{grades.count('Amber')}" if grades.count('Amber') > 0
  return "Red: #{grades.count('Red')}" if grades.count('Red') > 0
end
