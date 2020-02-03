def report(grades)
  grades = grades.split(', ')
  report = []
  grades.each do |grade|
    report_line = "#{grade}: #{grades.count(grade)}"
    report << report_line unless report.include? report_line
  end
  report.join("\n")
end
