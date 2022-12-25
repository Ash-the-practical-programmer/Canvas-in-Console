class Canvas
  attr_accessor :text, :minho
  def initialize(text="Hi, I'm Canvas in Console",minho=43)
    @text = text
    @minho = minho
    puts "#Prsenting Canvas in Console in Ruby"
    p = lambda{ puts "–"+"—"*minho+"–" }
    p.call 
    space_1,space_2 = 0,0
    temp = text.scan(/.{0,#{minho-1}}[a-z.!?,;](?:\b|$)/mi)
    20.times {
      unless _1 == (20 - temp.size)/2
        puts "–" +" "*minho+"–"
      else
        for i in temp
          if i.size.even?
            space_1 = (minho-i.size)/2
            space_2 = 43 - i.size - space_1
          else
            space_1 = (minho-i.size)/2
            space_2 = space_1
          end
          puts "–"+(" "*space_1+i+" "*space_2).center(minho)+"–"
        end
      end
    }
    p.call 
  end
  def describe
    if @text.size.even? && @text.length > minho
      puts "\n#Bot: Your inputted text's length excceeded #{minho} and it was also even"
    elsif @text.size.zero?
      puts "\n#Bot: Your inputted text's length is 0"
    end
    puts "\n#Note: Current version of Canvas in Console \n       is now compatible with text/string of \n       any length but only for strings made\n       of alphabets"
    puts "\n#Update: The project is still in progress /\n         under construction and new features \n         will be added very soon.\n"
    puts "\n#Mission: No more any console will be boring.\n          It can definitely be more fun, \n          interesting and better than any \n          graphical interface. We commit it."
  end
end

#Import this file , create an instance of Canvas and make use of its helpful methods .
