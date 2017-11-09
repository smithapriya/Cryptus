require 'test_helper'

class CryptocurrencysControllerTest < ActionDispatch::IntegrationTest
  test "should get fetch" do
    get cryptocurrencys_fetch_url
    assert_response :success
  end

end
