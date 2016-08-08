class ProgressBar
  def initialize(start, finish)
    @start = start
    @finish = finish
    @progress = start
  end

  def increment
    @progress = @progress + 1
  end

  def output
    system "clear"
    puts "#{@progress} out of #{@finish}"
  end
end
