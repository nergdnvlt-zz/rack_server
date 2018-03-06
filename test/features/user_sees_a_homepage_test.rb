# Gives us access to the minitest and all the capybara info in test_helper file
require './test/test_helper'

# Creating classes for testing purposes follows minitest conventions,
# but now we inherit from our created CapybaraTestCase which gives us
# access to capybara methods

class HomePageTest < CapybaraTestCase
  def test_user_can_see_the_hompage
    # visit is a capybara method which takes the path as an arguement
    visit '/'

    # asserts that the page has content
    assert page.has_content?('Welcome!')
    # test the status code response for a specific code
    assert_equal 200, page.status_code
    # also note the use of 'page'
  end
end
