# The FizzBuzz module gives a namespace to the Generator
# This generator can be referred to as FizzBuzz::Generator
# The "sample data generator" may be referenced with Sample::Data::Generator
module FizzBuzz
	class Generator
		# This method returns a fizzbuzz list
		def create(size)
			Array.new(size)
		end
	end
end