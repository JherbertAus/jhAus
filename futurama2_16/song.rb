#voices - ava

@song_verse1 = <<THE_END
boy1: do d doo d   doooo......
boy1: All the leaves are brownnnnnnnn

boy1: And the sky is greyyyyyyyyy

boy1: I've been for a walk         .

boy1: On a winter's day            .

boy1: I'd be safe and warm         .

boy1: If I was in L.A             .

THE_END

@song_chorus1 = <<THE_END
boy1: California dreamin'
girl1:           (California dreamin')
boy1:On such a winter's day
THE_END

@song_verse2 = <<THE_END
Stopped into a church
I passed along the way
Well, I got down on my knees
(got down on my knees)
And I pretend to pray
(I pretend to pray)
You know the preacher like the cold
(preacher like the cold)
He knows I'm gonna stay
(knows I'm gonna stay)
THE_END

@song_chorus2 = <<THE_END
California dreamin'
(California dreamin')
On such a winter's day
THE_END

@song_verse3 = <<THE_END
All the leaves are brown
(all the leaves are brown)
And the sky is grey
(and the sky is grey)
I've been for a walk
(I've been for a walk)
On a winter's day
(on a winter's day)
If I didn't tell her
(if I didn't tell her)
I could leave today
(I could leave today)
THE_END

@song_chorus3 = <<THE_END
California dreamin'
(California dreamin')
On such a winter's day
(California dreamin')
On such a winter's day
(California dreamin')
On such a winter's day
THE_END


@characters = {
  'girl1' => 'ava',
  'boy1' => 'alex',

}

# Apple TTS voices
@voices = %W[alex ava]

@rate = 250

@song_verse1.each_line do |line|
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
