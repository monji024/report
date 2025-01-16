require 'io/console'
require 'colorize'
require 'terminal-table'

def re(text)
  text.each_char do |char|
    print char
    sleep(0.001)
  end
end

puts "Welcome to the Report System".red

rows = []
rows << ["Number".cyan, "Info".cyan]
rows << ["1033".green, "Reporter Channel".green]
rows << ["2033".green, "Reporter Account".green]

table = Terminal::Table.new :rows => rows

puts table

print "Enter Number: ".green
number = gets.chomp

case number
when "1"
  system("python3 reporter.py")
when "2"
  system("python3 report.py")
else
  puts "Invalid option."
end
