require_relative "asciiart"
def AsciiText()
        puts "type your text"
        text = gets.chomp
        puts "type font"
        font = gets.chomp
        ascii = AsciiArt.new(text, font)
        puts File.read("ascii.txt")
        start()
end
def FontList()
        ascii = AsciiArt.new("","")
        ascii.Fontlist()
        puts File.read("ascii.txt")
        start()
end
def start()
        puts "AsciiGenerator v1.0 by R4yan\nCommands :\n[a] - font list \n[b] - generate ascii text\n[c] - generate ascii image"

        puts "type a command"
        type = gets.chomp
        if(type == "a")
                FontList()
        elsif(type == "b")
                AsciiText()
        else()
                puts "unkow command"
                return
        end
end
start()
