class Canvas
    def initialize(text="Hi, I'm Canvas in Console __",minho)
        puts "#Prsenting Canvas in Console in Ruby"
        puts "–"+"—"*minho+"–"
        len = text.length
        space_1 = (minho-len)/2
        space_2 = if len%2 == 1
            space_1 
        else 
            space_1+1
        end
        20.times {|time|
        unless time == 9
            puts "–" +" "*minho+"–"
        else
            puts ("–"+" "*space_1+text+" "*space_1+"–").center(minho+2)
        end
        }
        puts "–"+"—"*minho+"–"
    end
end
txt = gets.chomp
text = (txt.nil? || txt.empty? )? "Hi, I'm Canvas in Console":txt
minho_2 = gets
minho = (minho_2.nil? || minho_2.empty? )?43:minho_2.to_i
c = Canvas.new(text,minho) 
END{
    if (text.length % 2 == 0) && (text.length > minho)
        puts "\n#Warning: Your inputted text's length excceeded 43 and it was also even"
    elsif (text.length == 0)
        puts "\n#Warning: Your inputted text's length is 0"
    elsif (text.length > minho)
        puts "\n#Warning: Your inputted text's length exceeded #{minho}"
    elsif (text.length % 2 == 0)
        puts "\n#Warning: Your inputted text's length is even"
    
    end
    puts "\n#Note: Current version of Canvas in Console \n       is only compatible with text/string of \n       odd length not exceeding 45"
    puts "\n#Update: The project is still in progress /\n         under construction and new features \n         will be added very soon.\n"
    puts "\n#Mission: No more any console will be boring.\n          It can definitely be more fun, \n          interesting and better than any \n          graphical interface. We commit it."
}
