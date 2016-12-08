require 'test_helper'

class SiteControllerTest < ActionDispatch::IntegrationTest
  test "should get inde" do
    get site_inde_url
    assert_response :success
  end

end
