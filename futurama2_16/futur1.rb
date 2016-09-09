# athofint.rb
# require "color"
# require "catpix"

#intro
def slowly
  yield.each_char { |c| putc c; $stdout.flush; sleep 0.06 }
end


system "clear"
print "FUTURAMA\n\n"
print "Anthology of Interest: Part One\n\n"
sleep (1)

slowly do
  "Painstakingly Typed Before A Live Audience"
end
#
sleep (2)

system "clear"
sleep (0.5)
print """Scene: Planet Express: Farnsworth's Lab."""
sleep (1.5)
print """\nThe staff are assembled around a table.\n\n"""
sleep (1.5)
#
print "Farnsworth\n\n"
sleep (1)
print "GOOD NEWS EVERYONE!\n"
sleep (1)

slowly do
  "I've invented a device that allows you to operate equipment\nfrom great distances.\n\n"
end

sleep (0.5)

slowly do
 """I call it 'the fing-longer'\n\n"""
end
#
picture [He is wearing a glove with a long index finger.]
sleep (0.5)

print "Observe.\n"
sleep (0.5)
#[He pulls out a rest and aims the fing-longer at a button on a piece of equipment.]

slowly do
 "And,\nhere we go\n\n"
end

sleep (2)
#[He misses the button a few times but eventually succeeds. The equipment, a sort of TV screen, turns on.]
print "There!\n"

sleep (1)
#
system "clear"

sleep (1)
print "Fry: \n"
  slowly do
    "Ooh!\n"
  end

print "Amy: \n"
  slowly do
    "Wow!\n"
  end

print "Zoidberg: \n"
 slowly do
   "Ah!\n"
 end
sleep (1)

print "Farnsworth: \n"
  slowly do
     "Pretty long, eh?\n"
  end
 sleep (1)
#
print "Fry: "
     slowly do
       "Yeah, it's really long.\nBut what did you just turn on with it?\n\n"
   end
  sleep (1)

  print "Farnsworth: \n"
    slowly do
       """Oh, that's just the 'What-If' machine I invented.\nYou pose it a What-If question\nand it generates a video simulation of what would happen.\n\n"""
      end
 sleep (1)

  print "Fry: \n"
     slowly do
       "Does it really work?\n"
     end
  sleep (1)

  print "Farnsworth: \n"
    slowly do
       """Of course it works!\n"""
   end
    sleep (1)
    print "Farnsworth bashes Fry on the nose with the fing-longer.\n\n"
    sleep (2)
    print "Farnsworth: \n"
    slowly do
      "It's just not very long.\n"""
     end

 end of intro
 sleep (1)
   print "Bender: \n"
     slowly do
           "Ooh! Ooh!\nI wanna ask it a question!\n\n"""
    end
 sleep (1)

        print "Bender speaks into the the microphone of the What-If machine.\n\n"

 sleep (1)
        slowly do
            """As a robot living among humans,\nI've never really felt accepted at parties or nude beaches.\nSo I've always secretly wondered:\nWhat if I was 500-feet tall?\n"""
        end
sleep (1)
       print "Zoidberg: \n"
         slowly do
           "Let's watch, shall we?\n"""
        end
 sleep (1)
end
system "clear"
