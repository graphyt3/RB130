require 'minitest/autorun'

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test

  

  def test_accept_money
    temp_register = CashRegister.new(1000)
    item_bought = Transaction.new(20)
    item_bought.amount_paid = 20

    previous_balance = temp_register.total_money

    assert_equal(previous_balance + 20, temp_register.accept_money(item_bought))
  end

  def test_change
    temp_register = CashRegister.new(1000)
    item_bought = Transaction.new(20)
    item_bought.amount_paid = 20

    assert_equal(0, temp_register.change(item_bought))
  end

  def test_give_receipt
    temp_register = CashRegister.new(1000)
    item_bought = Transaction.new(20)
    assert_output("You've paid $20.\n") do  
      temp_register.give_receipt(item_bought)
    end
  end

  
end