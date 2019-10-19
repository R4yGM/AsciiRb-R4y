require 'net/http'

class AsciiArt
        def initialize(q, font)
                if(File.exist?('ascii.txt'))

                else
                 File.new "ascii.txt"
                 puts "missing ascii.txt"
                end
                q = q.gsub(" ","+")
                response = Net::HTTP.get_response('artii.herokuapp.com', '/make?text='+q+'&font='+font)
                out_file = File.open "ascii.txt","w"
                out_file.puts(response.body)
                out_file.close
##              puts response.body
                return response.body
         end
        def Fontlist()
           response1 = Net::HTTP.get_response('artii.herokuapp.com', '/fonts_list')
           return puts response1.body
        end
end
