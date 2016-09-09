
@script = <<THE_END
Farnsworth: Good news, everyone!    I've invented a device that allows you to operate equipment from great distances. I call it "the fing-longer".
Narrator: He is wearing a glove with a long index finger.
Farnsworth: Observe
Narrator: He pulls out a rest and aims the fing-longer at a button on a piece of equipment.
Farnsworth: There
Narrator: He misses the button a few times but eventually succeeds. The equipment, a sort of TV screen, turns on.
Farnsworth: And, here we go.
Fry: Ooh!
Amy: Wow!
Farnsworth: Pretty long, eh?
Fry: Yeah, it's really long. But what did you just turn on with it?
Farnsworth: Oh, that's just the What-If machine I invented. You pose it a What-If question and it generates a video simulation of what would happen.
Fry: Does it really work?
Farnsworth: Of course it works!
Narrator: He bashes Fry on the nose with the fing-longer.
Farnsworth: It's just not very long.
Bender: Ooh! Ooh!
Narrator: Bender rubs his hands together.
Bender: I wanna ask it a question!
Narrator: He speaks into the the microphone of the What-If machine.
Bender: As a robot living among humans, I've never really felt accepted at parties or nude beaches. So I've always secretly wondered: What if I was 500-feet tall?
Zoidberg: Let's watch, shall we?

Veronica Corningstone: I need this machine so I can watch a tape for a story.
Ron Burgundy: I'm using the tape. I'm showing Jeffrey my Emmy tape. We are watching history.
Veronica Corningstone: Mr. Burgundy, I'm a professional,    and I would like to be able to do my job.
Ron Burgundy: Big deal. I am very professional.
Veronica Corningstone: Mr. Burgundy, you are acting like a baby.
Ron Burgundy: I'm not a baby, I am a man. I am an anchorman.
Veronica Corningstone: You are not a man. You are a big fat joke.
Ron Burgundy: I'm a man who discovered the wheel and built the Eiffel Tower out of metal and brawn. That's what kind of man I am. You're just a woman with a small brain. With a brain a third the size of us. It's science.
Moira: I will have you know that I have more talent and more intelligence in my little finger than you do in your entire body, sir.
Ron Burgundy: You are a smelly pirate hooker.
Moira:  You look like a blueberry.
Ron Burgundy: Why don't you go back to your home on Whore Island?
Tessa: Well, you have bad hair.
kate: Well, you have bad hair.
bubbles: What     did      you       say?
Matilda: I said... your hair... looks STUPID.
THE_END


@characters = {
  'Farnsworth' => 'Oliver',
  'Narrator' => 'junior',
  'Bender.' => 'Lee',
  'Fry' => 'tom',
  'Matilda' => 'Tessa',
  'Mugatu' => 'Lee',
  'Amy' => 'Kate',
  'Veronica Corningstone' => 'Moira',
  'Ron Burgundy' => 'Alex',
}


# Apple TTS voices
@voices = %W[Moira tom ava oliver daniel alex lee kate Tessa Bruce junior]

@rate = 200

@script.each_line do |line|
  line.chomp!
  actor, dialog = line.split(':')
  next if actor.nil?

  puts "#{actor} says \"#{dialog}\""
  voice = nil
  unless @characters.has_key?(actor) then
    @characters[actor] = @voices.shift
    @voices.push(@characters[actor])
  end
  voice = @characters[actor]
  system('say', '-r', @rate.to_s, '-v', voice.to_s, dialog)
end
