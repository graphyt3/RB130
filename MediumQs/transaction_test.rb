require 'minitest/autorun'

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def test_prompt_for_payment
    test_input = StringIO.new("30\n")
    test_output = StringIO.new
    item_bought = Transaction.new(30)
    item_bought.prompt_for_payment(input: test_input, output: test_output)

    assert_equal(30, item_bought.amount_paid)
  end
end