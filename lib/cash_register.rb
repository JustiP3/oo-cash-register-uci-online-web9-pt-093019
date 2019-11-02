require 'pry'
class CashRegister

attr_accessor :total, :discount
attr_reader :basket

def basket=(key,value)
  @basket[:key] = value
end

def initialize(emp_disc=0)
  @total = 0.0
  @discount = emp_disc
  @basket = {}
end



def add_item(title, price, qty=1)
  @total += price*qty
  @basket=title,qty
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

def items
basket.keys
end # end of items method




end # end of class cash register
