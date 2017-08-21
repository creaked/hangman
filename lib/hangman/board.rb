class Board
  def self.display(health)
    case health
    when 6
    puts %q{
      |----|
           |
           |
           |  
    }
    when 5
    puts %q{
      |----|
      o    |
           |
           |  
    }
    when 4
    puts %q{
      |----|
      o    |
      |    |
           |  
    }
    when 3
    puts %q{
      |----|
      o    |
     /|    |
           |  
    }
    when 2
    puts %q{
      |----|
      o    |
     /|\   |
           |  
    }
    when 1
    puts %q{
      |----|
      o    |
     /|\   |
     /     |  
    }
    when 0
    puts %q{
      |----|
      o    |
     /|\   |
     / \   |  
    }
    end
  end
end