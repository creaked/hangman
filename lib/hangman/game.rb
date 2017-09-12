require_relative 'board'

class Game
  def initialize
    @word = File.readlines("data/dictionary.txt").sample.strip.downcase
    @word_split = @word.split(//)
    @health = 6
    @correct_letters = []
    @incorrect_letters = []
  end
  
  def play
    Board.display(@health)
    @word_split.each {print "_ "}
    puts "\n\n"
    
    until win or lose
      print "Letter >> "
      @input = gets.chomp.downcase
      push_letter(@input)
      
      Board.display(@health)
      puts "Incorrect: #{@incorrect_letters}\n\n" unless @incorrect_letters.empty?
      
      check()
      puts "\n\n"
    end
  end
  
  private
  
  def push_letter(input)
    @correct_letters.push(input) if @word_split.include?(input)
    if !@word_split.include?(input)
      @incorrect_letters.push(input)
      @health -= 1
    end
  end
  
  def check
    @word_split.each do |letter| 
      if @correct_letters.include?(letter)
        print "#{letter} "
      else
        print "_ "
      end
    end
  end
  
  def win
    if @word_split.all?{|x| @correct_letters.include?(x)}
      puts "you win!"
      true
    end
  end
  
  def lose
    puts "you lose!"if @health == 0
    true if @health == 0
  end
  
end
