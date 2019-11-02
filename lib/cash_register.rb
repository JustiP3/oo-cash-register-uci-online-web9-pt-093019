class CashRegister

attr_accessor :total, :discount, :basket


def initialize(emp_disc=0)
  @total = 0.0
  @discount = emp_disc
end

def add_item(title, price, qty=1) #wtf are we doing with title ??
  @total += price*qty
  @basket[title] = qty
end

def apply_discount
  if @discount != 0
new_total = (@total * (100-@discount) / 100)
#discount is an integer representing a percentage
@total = new_total
"After the discount, the total comes to $#{@total.to_i}."
else
  "There is no discount to apply."
end #end of if block
end # end of method apply_discount




end # end of class cash register
