
#Test::Unit

require 'test/unit'
require 'exercises.rb'

class AccountTest < Test::Unit::TestCase
  
  def test_if_account_number_is_number
    new_account = Account.new("person", "address")
    assert new_account.account_number.is_a?(Numeric)
  end

end