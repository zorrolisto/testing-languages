print("\n=======STRINGS=======\n")
poem = "My toast has flown from my hand
And my toast has gone to the moon.
But when I saw it on television,
Planting our flag on Halley's comet,
More still did I want to eat it."
newPoem = poem.gsub("toast", "honeydew")
 
puts newPoem
print("\n")
puts poem

print("\n")
puts poem.lines.reverse

print("\n\n=======HASHES=======\n")

books = {}
books["Gravitys Rainbow"] = :splendid
books["another"] = :quite_not_good
books["The deep end"]  = :abysmal
books["Tnd"]  = :abysmal
books["Living colors"] = :mediocre
puts books["another"]
puts books.length
print("\nAll hash\n")
puts books
print("\nKeys\n")
puts books.keys
print("\nVALUES\n")
puts books.values

print("\n Looping trought hash \n")
ratings = Hash.new {0}

books.values.each { |rate|
    ratings[rate] += 1
}
puts ratings

print("\nA block loop\n")
5.times {
    print "Hola mundo "
}
print("\n\nCounting to 3\n")
number = 0
3.times {
    number += 1
    puts number
}
print("\n\nCounting to 5 with block prop\n")
5.times { |numTime|
    puts numTime
}

print("\n\n=======FUNCTIONS=======\n")
print("\ndef a first function\n")
def tame(number_of_times)
  number_of_times.times{ |num|
    puts num+1
  }
end
puts tame 2
print("\ndef a first function\n")

=begin
s = get_shakey
s["William Shakespeare"].each { |key, val|
  puts val["title"]  
}

def count_plays(year)
  s = get_shakey
  s["William Shakespeare"].select{ |k, v|
    v["finished"] == year
  }.each{ |k, v|
    puts v["title"]
  }.count
end
puts count_plays(1591)

def print_plays(year_from, year_to)
  get_shakey["William Shakespeare"].select{ |k, v|
    year_from <= v["finished"] &&
    year_to   >= v["finished"]
  }.each{ |k, v|
    puts "#{v["title"].ljust(30)} #{v["author"]}"
  }
end

print_plays(1600, 1605)
=end

print("\n\n=======IF STATEMENT=======\n")
print("\n if statement \n")
if 1 > 2
  puts "Its greather"
end
puts "It will be showed" if true
puts "It will not be showed" if false
print("\n else statement \n")
a = 10
if a == 100
  puts "Expression is true, but a is now: #{a}"
else
  puts "#{a} is not equal to 100"
end
print("\n hungry statement \n")
def hungry?(time_of_day_in_hours)
  if time_of_day_in_hours < 12
  	puts "Me not hungry"
  else
    puts "Me hungry"
    true
  end
end
def eat_an(what)
  puts "Me eat #{what}\n"
end
eat_an 'apple' if hungry?(14)
eat_an 'apple' if hungry?(10)

print("\n\n=======CLASSES =======\n")
print("\n Init a class \n")
class Blurb
  attr_accessor :time, :content, :mood

  def initialize(mood, content="")
    @time = Time.now
    @content = content[0..39]
    @mood = mood
  end
  def moodify
    if @mood == :sad
      return ":-("
    elsif @mood == :happy
      return ":-)"
    end
    ":-|"
  end
end

=begin
blurb1 = Blurb.new
puts blurb1
blurb1.content = "NEW CONTENT hola hola"
blurb1.time = Time.now
blurb1.mood = :sick
puts blurb1
=end

puts Blurb.new(:mood1, "hola mundooooo").time
Blurb2 = Blurb.new :confused, "I can not believe Mt. Hood was stolen!"
 
print("\n Complete class \n")
class Blurbalizer
  def initialize(title)
    @title  = title
    @blurbs = [] 
  end

  def add_a_blurb(mood, content)
    @blurbs << Blurb.new(mood, content)
  end

  def show_timeline
    puts "Blurbify: #{@title} has #{@blurbs.count} Blurbs"

    @blurbs.sort_by { |t|
      t.time
    }.reverse.each { |t|
      puts "#{t.content.ljust(40)} #{t.time} #{t.moodify}"
    }
  end
end

myapp = Blurbalizer.new "The Big Blurb"
myapp.add_a_blurb :happy, "123"
myapp.add_a_blurb(:sad, "234")
myapp.add_a_blurb :happy, "345"
myapp.add_a_blurb(:angry, "456")
myapp.add_a_blurb :sad, "567"
myapp.add_a_blurb(:happy, "678")
myapp.show_timeline
