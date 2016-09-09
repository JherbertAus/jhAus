require "colored"

def slowly
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.06 }
end

def slowly4
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.12 }
end

def slowly6
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.24 }
end

system "clear"
print "\t\tFUTURAMA\n\n".yellow
print "Anthology of Interest: Part One\n\n".blue_on_white

sleep (1)


slowly6 do
  "Painstakingly Typed Before A Live Audience\n\n"
end
sleep (2)

system "clear"
sleep (0.5)

print "Scene: Planet Express: Farnsworth's Lab\n".bold
sleep (1.5)

print "The staff are assembled around a table.\n\n"
sleep (1.5)

print "Farnsworth\n".cyan
sleep (1)
print "GOOD NEWS EVERYONE!\n\n".bold.cyan
sleep (1)

slowly do
  "I've invented a device that allows you to operate equipment\nfrom great distances.\n\n".cyan
end

sleep (1)

slowly do
  "I call it ".cyan
end
slowly do
  "the fing longer\n\n".bold.cyan
end
#picture [He is wearing a glove with a long index finger.]
sleep (0.5)

print "Observe\n\n".cyan
sleep (1)
#[He pulls out a rest and aims the fing-longer at a button on a piece of equipment.]

slowly do
  "And, ".cyan
end
slowly do
  "here we go\n\n".cyan
end

sleep (2)
slowly do
  "He misses the button a few times\nbut eventually succeeds.\nThe equipment, a sort of TV screen, turns on\n\n"
end
#[]
print "There!\n".cyan

sleep (1)

system "clear"

sleep (1)
print "Fry: \n".yellow

slowly do
  "Ooh!\n".yellow
end

print "Amy: \n".red_on_white
slowly do
  "Wow!\n".red_on_white
end

print "Zoidberg: \n".red
slowly do
  "Ah!\n".red
end

sleep (1)

print "Farnsworth: \n".cyan
slowly do
  "Pretty long, eh?\n\n".cyan
end
sleep (1)

print "Fry:\n".yellow
slowly do
  "Yeah, it's really long.\nBut what did you just turn on with it?\n\n".yellow
end

sleep (1)
#########

print "Farnsworth: \n".cyan
slowly do
  """Oh, that's just the 'What-If' machine I invented.\nYou pose it a What-If question\nand it generates a video simulation of what would happen\n\n""".cyan
end
sleep (1)

print "Fry:\n".yellow
slowly do
  "Does it really work?\n".yellow
end

sleep (1)
print "Farnsworth: \n".cyan
slowly do
  "Of course it works!\n".cyan
end

sleep (1)

print "Farnsworth bashes Fry on the nose with the fing-longer.\n\n"
sleep (2)

print "Farnsworth:\n".cyan
slowly do
  "It's just not very long.\n\n".cyan
end
sleep (1)

print "Bender:\n".bold.black_on_white
slowly do
  "Ooh! Ooh!\nI wanna ask it a question!\n\n".bold.black_on_white
end
print "Bender speaks into the the microphone of the What-If machine.\n\n"
sleep (1)

print "Bender:\n".bold.black_on_white
slowly do
  "As a robot living among humans,\nI've never really felt accepted at parties or nude beaches.\nSo I've always secretly wondered: ".bold.black_on_white
end
slowly4 do
  "What if I was 500-feet tall?\n\n".bold.black_on_white
end
sleep (1)

print "Zoidberg: \n".red
slowly do
  "Let's watch, shall we?\n".red
end
sleep (2)

system "clear"
