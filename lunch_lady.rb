#======Main Dish Menu
def main_dish
	@main_dish_menu = { 1 => "Baby Back Ribs ($9.00)", 2 => "Beef Brisket ($8.00)", 3 => "Pulled Pork ($5.50)"}
	puts "What Main Dish would you like?"
	main_dish_menu.each do |key, value|
		puts "#{key}) #{value}"
	end
end	

#======Side Dish Menu
def side_dish
	@side_dish_menu = { 1 => "Macaroni and Cheese ($2.50)", 2 => "Grits ($1.25)", 3 => "Hush Puppies ($1.75)", 4 => "Cornbread ($1.00)", 5 => "Sweet potato fries ($1.50)", 6 => "Cole Slaw ($0.25)" }
	puts "What side dish would you like?"
	side_dish_menu.each do |key, value|
		puts "#{key}) #{value}"
	end
end

#=======Menu Walk Through Method
def main_menu
	main_dish
	@main_dish_option = gets.strip.to_i
	main_dish_menu.each do |key, value|
		

	side_dish
	@side_dish_option1 = gets.strip.to_i

	side_dish
	@side_dish_option2 = gets.strip.to_i
end	

#========Order Repeater
def order_repeater
	puts "You're ordering #{@main_dish_option}, #{@side_dish_option1}, and #{@side_dish_option2}"
	puts "Your total for the order is "
end	

main_menu
order_repeater