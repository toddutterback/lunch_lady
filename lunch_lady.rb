#======Main Dish Menu==========
def main_dish
	@main_dish_menu = { 1 => "Baby Back Ribs ($9.00)", 2 => "Beef Brisket ($8.00)", 3 => "Pulled Pork ($5.50)"}
	puts "What Main Dish would you like?"
	@main_dish_menu.each do |order, food|
		puts "#{order}) #{food}"
	end
	main_dish_option = gets.strip.to_i

	if @main_dish_menu.has_key?(main_dish_option)
		@main_dish1 = @main_dish_menu #(main_dish_option)
	else 
		puts "Try ordering something from the Main Menu"
	end	
end	


#======Side Dish Menu=========
def side_dish
	side_dish_menu = { 1 => "Macaroni and Cheese ($2.50)", 2 => "Grits ($1.25)", 3 => "Hush Puppies ($1.75)", 4 => "Cornbread ($1.00)", 5 => "Sweet potato fries ($1.50)", 6 => "Cole Slaw ($0.25)" }
	puts "What side dish would you like?"
	side_dish_menu.each do |order, food|
		puts "#{order}) #{food}"
	end
	side_dish_option1 = gets.strip.to_i

	if side_dish_menu.has_key?(side_dish_option1)
		@side_dish1 = side_dish_menu #(side_dish_option1)
	else
		puts "Try ordering something from the Side Menu"
	end
	side_dish_option2 = gets.strip.to_i

	if side_dish_menu.has_key?(side_dish_option2)
		@side_dish2 = side_dish_menu #(side_dish_option2)
	else
		puts "Try ordering something from the Side Menu"
	end
end


#=======Menu Walk Through Method=======
def main_menu
	main_dish

	side_dish

end	

# ========Order Repeater==============
def order_repeater
	puts "You're ordering #{@main_dish1}, #{@side_dish1}, and #{@side_dish2}"
	puts "Your total for the order is "
end	

main_menu
order_repeater