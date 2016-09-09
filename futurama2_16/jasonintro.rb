
@script = <<THE_END
Computer: This guy to my right, he's name is Jason.
Computer: He is an amazingly talented programmer.
Computer: (sorry,  he made me say that).
Computer: Jason has just finished working with Fuji Xerox, in a techical support role.
Computer: and is now looking to change direction and wants to learn to code.

Computer: Some of the things he codes, makes me laugh.
Computer:  He's still got much to learn

THE_END


@characters = {
  'Computer' => 'Kate',
}


# Apple TTS voices
@voices = %W[Kate,]

@rate = 170

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
  system('say', '-r', @rate.to_s, '-v', voice.to_s, dialog,)
  system "clear"

end
