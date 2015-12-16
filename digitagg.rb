def digitagg number

	integer_counter = Array.new(10, 0) #creates placeholder array for zero to nine.  default count is zero.

	number_breakdown = number.to_s.chars.map(&:to_i) #separates number into individual digits and puts it into an array

#for each digit in user number, add one to the integer counter array
	number_breakdown.each do |x|
		integer_counter[x] += 1
	end

	puts 'The breakdown:'
	puts ''
	puts 'Zeros: ' + integer_counter[0].to_s
	puts 'Ones: ' + integer_counter[1].to_s
	puts 'Twos: ' + integer_counter[2].to_s
	puts 'Threes: ' + integer_counter[3].to_s
	puts 'Fours: ' + integer_counter[4].to_s
	puts 'Fives: ' + integer_counter[5].to_s
	puts 'Sixs: ' + integer_counter[6].to_s
	puts 'Sevens: ' + integer_counter[7].to_s
	puts 'Eights: ' + integer_counter[8].to_s
	puts 'Nines: ' + integer_counter[9].to_s


end


def get_number
	puts 'Please input a number from 0 to 999,999,999'
	number = gets.chomp.to_i
		if number > 999999999
			puts ''
			puts 'Number is too high.  Try again'
			puts ''
			sleep 3
			get_number
		else
			digitagg number
		end
end

get_number