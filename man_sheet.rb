def main_menu
	puts "Man Sheet"
	puts "1) quick Command Line options"
	puts "2) Search"
	puts "3) Exit"
	puts "**** Make a Selection ****"
	#user_selection = gets
end

def command_line_menu
	puts "*** Command Line Menu ***"
	puts "1) CD"
	puts "2) MKDIR"
	puts "3) VIM"
	puts "Make a Selection"
end

# to build the while loop
while true
	main_menu
	user_selection = gets.to_i

	case user_selection
		when 1
			command_line_menu
			# print out command line menu.  Going to need this as a Method.
			# puts "*** Command Line Menu ***"
			# puts "1) CD"
			# puts "2) MKDIR"
			# puts "3) VIM"
			# puts "Make a Selection"
	command_selection = gets.to_i
	case command_selection
		when 1
			puts `man cd`
		when 2
			puts `man mkdir`
		when 3
			puts `man vim`
		else
			puts "Invalid Selection"
			command_line_menu
	end

		when 2
			# get search input from user
			puts "Search for Man command:"
			search_value = gets.strip
			#puts "user value was: #{search_value}"
			puts `man #{search_value}`
		when 3
			#exit the program
			puts "Thanks for using this program."
			exit(0)
		else
			puts "Invalid Selection."
			#show Main Menu again
			# with the addition of the while loop, the call for main_menu is no longer necessary
		end
end