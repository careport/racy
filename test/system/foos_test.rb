require "application_system_test_case"
require "webdrivers/chromedriver"

class FoosTest < ApplicationSystemTestCase
  test "showing a foo" do
    Capybara.current_driver = :selenium
    100.times do |i|
      foo = Foo.create(id: i)
      foo.bars << (0...3).map { Bar.create(foo_id: foo.id) }
    end

    visit "/foos"
    page.execute_script(%{
      var links = document.getElementsByTagName("a");
      for (var i = 0; i < links.length; i++)
        links[i].click();
    })
    sleep 1
  end
end
