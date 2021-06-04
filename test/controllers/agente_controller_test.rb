require 'test_helper'

class AgenteControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get agente_index_url
    assert_response :success
  end

end
