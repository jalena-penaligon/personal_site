require './test/test_helper'

class HomepageTest < CapybaraTestCase
  def test_user_can_see_the_homepage
    visit '/'

    assert page.has_content?("Welcome!")
    assert_equal 200, page.status_code
  end

  def test_page_not_found_error_displays
    visit '/blog'

    assert page.has_content?("Page not found.")
    assert_equal 404, page.status_code
  end

  def test_user_can_see_about_page
    visit '/about'

    assert page.has_content?("Here's some stuff to know.")
    assert_equal 200, page.status_code
  end

end
