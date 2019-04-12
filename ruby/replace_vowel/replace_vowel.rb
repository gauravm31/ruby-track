class Replace
	def initialize(string)
		@string = string
	end
		def self.replace_vowel
			puts "enter a string "
			@string = gets.chomp.to_s
			 puts @string.gsub(/[aeiouAEIOU]/,"*")
			
		end
end
Replace.replace_vowel