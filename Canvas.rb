require_relative "/decorators.rb"
class Canvas
  attr_accessor :text, :minho
  def initialize text="Hi, I'm Canvas in Console",minho=43
    @text = text
    @minho = minho
    $Decorators.sample.call "#Presenting Canvas in Console in Ruby"
    p = lambda{ puts "–"+"—"*minho+"–" }
    p.call 
    space_1 = ((minho-text.size)/2).abs
    space_2 = space_1 + (text.size.odd? ? 0 : 1)
    temp = text.scan(/.{0,#{minho-1}}[a-z.!?,;](?:\b|$)/mi)
    20.times {|time|
      unless time == (20 - temp.size)/2
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
    if @text.size.even? && @text.size > minho
      puts "\n#Bot: Your inputted text's length excceeded 43 and it was also even"
    elsif @text.size.zero?
      puts "\n#Bot: Your inputted text's length is 0"
    end
    print "\n#Note: "
    put ="Current version of Canvas in Console is now compatible with text/string of any length but only for strings made of alphabets".scan(/.{0,37}[a-z.!?,;](?:\b|$)/mi)
    puts put[0]
    (put.size-1).times { puts " "*6+put[_1+1] }
    print "\n#Update: "
    put_2 = "The project is still in progress under construction and new features will be added very soon.\n".scan(/.{0,35}[a-z.!?,;](?:\b|$)/mi)
    puts put_2[0]
    (put_2.size-1).times { puts " "*8+put_2[_1+1] }
    print "\n#Mission: "
    put_3 = "No more any console will be boring.It can definitely be more fun,interesting and better than any graphical interface.".scan(/.{0,34}[a-z.!?,;](?:\b|$)/mi)
    puts put_3[0]
    (put_3.size-1).times { puts " "*10+put_3[_1+1] }
  end
end

