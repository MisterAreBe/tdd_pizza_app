def get_size()
    {"8 inch" => 7.00, "16 inch" => 10.00, "32 inch" => 13.00}
end

def get_meat()
    ["Pepperoni", "Sausage", "Bacon", "Ham"]
end

def get_veggie()
    ["Onions", "Banna Peppers", "Olives", "Mushrooms"]
end

def get_sauce()
    ["Marinara", "Barbecue", "Garlic Butter"]
end

def get_crust()
    {"pan" => "Pan", "stuffed crust" => "Stuffed Crust", "thin crust" => "Thin Crust", "deep dish" => "Deep Dish"}
end

def make_pizza(size, meat, veggie, sauce, crust)
    if get_size().has_key?(size)
        price = get_size()[size]

        meat.each do; price += 0.50; end

        veggie.each do; price += 0.25; end

        sauce.each do; price += 0.10; end

        crust.each do; price += 1.00; end
    else; return 0; end
    price
end

def pizza_order(size, meat, veggie, sauce, crust) 
        if get_size().has_key?(size)
        size_order = size

        meat_order = ""
        meat.each do |i|
            meat_order += ", #{get_meat()[i]}"
        end

        veggie_order = ""
        veggie.each do |i|
            veggie_order += ", #{get_veggie()[i]}"
        end

        sauce_order = ""
        sauce.each do |i|
            sauce_order += ", #{get_sauce()[i]}"
            unless sauce_order.length <= 8
                sauce_order += " sauce"
            end
        end

        unless get_crust().has_key?(crust)
            crust_order = ""
        else
            crust_order = ", #{get_crust()[crust]}"
        end
        
        start_order = "Enjoy your "
    else
        size_order = "No"
    end
    
    order = "#{start_order}#{size_order}#{meat_order}#{veggie_order}#{sauce_order}#{crust_order} Pizza"
    order
end