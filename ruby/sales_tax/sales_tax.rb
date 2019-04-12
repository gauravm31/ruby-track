class Sales
	def initialize(product,imported,exempted,price,category,add_more)
	@product = product 
	@imported = imported
	@exempted = @exempted
	@price = price
	@category = category
	@add_more = add_more
	end
def exempted_from_tax
	
	if @category == "book"|| @category == "medicine" || @category == "food"
		@exempted = true
		puts "exempted from sales tax? yes"
	end
	imported_item
end
	def imported_item
		if @imported == true
			puts "imported? yes"
		else 
			puts "imported? no"
		end
		calculate_tax
	end
	def calculate_tax
		if @imported ==true	
			@price = @price*0.15 + @price
		end
		if @exempted
			@price
		end
		if @exempted == false && imported_item== false
			@price = @price*0.1 + @price
		end
		puts @price
		add_more_item
	end
		def add_more_item
			puts "add more items? y/n"
			@add_more = gets.chomp.to_s
			case @add_more
			when 'y'
				
			when 'n'
				return 
			else 
				puts "invalid input"
			end
		end

end
s1 = Sales.new("chocolate",true,true,20,"food","n")
s1.exempted_from_tax