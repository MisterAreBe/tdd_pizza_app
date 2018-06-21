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
    ["Pan", "Stuffed Crust", "Thin Crust", "Deep Dish"]
end

def make_pizza(size, meat, veggie)
    get_size()[size]

    price = get_size()[size]

    meat.each do
        price += 0.50
    end

    veggie.each do
        price += 0.25
    end

    price
end
