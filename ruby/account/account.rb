class Account 

	@@account_no = 0
	attr_reader :name, :balance, :account_no
	def initialize(name,balance)
	@name = name
	@@account_no +=1
	@balance = balance
	end
	def deposit(customer1,customer2,amount)
		@balance += amount
		puts "#{@name}: Account No.- #{@@account_no} deposited #{amount}. Total balance is #{@balance}"
	end
	def withdraw(customer1,customer2,amount)
		if amount <= @balance
			@balance -= amount
			puts "#{@name}, account no. - #{@@account_no} withdrew #{amount}. Total balance is #{@balance}"
		else
			raise "Insufficient balance"
		end
	
	end
end
customer_one = Account.new("Naman",50000)
customer_one.deposit("","",2000)

