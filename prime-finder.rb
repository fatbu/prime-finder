#!/usr/bin/env ruby

# prime-finder
# Program to find prime numbers

if ARGV.length==0
	STDERR.puts "Error: please specify arguments"
	exit 1
end

def prime(num)
	# Special cases
	if num<0
		raise "Arguments to prime() cannot be negative"
	end
	if num<2
		return false
	end
	if num<4
		return true
	end
	if num==4
		return false
	end
	factor=2
	while factor*factor<num
		if num%factor==0
			return false
		end
		factor+=1
	end
	return true
end

begin
	if ARGV.length==1
		current=2
		max=Integer ARGV[0]
		while current<max
			if prime(current)
				puts current
			end
			current+=1
		end
	else
		current=Integer ARGV[0]
		max=Integer ARGV[1]
		while current<max
			if prime(current)
				puts current
			end
			current+=1
		end
	end
rescue Interrupt
	puts "\nExiting..."
end
