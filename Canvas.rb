class Canvas
    attr_accessor :text, :minho
    def initialize(text="Hi, I'm Canvas in Console",minho=43)
        @text = text
        @minho = minho
        puts "#Prsenting Canvas in Console in Ruby"
        p = lambda{ puts "–"+"—"*minho+"–" }
        p.call 
        len = text.length
        space_1,space_2 = 0,0
        temp = text.scan(/.{0,#{minho-1}}[a-z.!?,;](?:\b|$)/mi)
        20.times {|time|
        unless time == (20 - temp.length)/2
            puts "–" +" "*minho+"–"
        else
            for i in temp
                if i.length % 2 == 0
                    space_1 = (minho-i.length)/2
                    space_2 = 43 - i.length - space_1
                else
                    space_1 = (minho-i.length)/2
                    space_2 = space_1
                end
                puts "–"+(" "*space_1+i+" "*space_2).center(minho)+"–"
            end
        end
        }
        p.call 
        if (text.length % 2 == 0) && (text.length > minho)
            puts "\n#Bot: Your inputted text's length excceeded 43 and it was also even"
        elsif (text.length == 0)
            puts "\n#Bot: Your inputted text's length is 0"
        end
        puts "\n#Note: Current version of Canvas in Console \n       is now compatible with text/string of \n       any length but only for strings made\n       of alphabets"
        puts "\n#Update: The project is still in progress /\n         under construction and new features \n         will be added very soon.\n"
        puts "\n#Mission: No more any console will be boring.\n          It can definitely be more fun, \n          interesting and better than any \n          graphical interface. We commit it."
    end
end

#Import this file , create an instance of Canvas and make use of its helpful methods .
