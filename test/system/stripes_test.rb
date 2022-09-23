require 'application_system_test_case'

class StripesTest < ApplicationSystemTestCase
  test 'visiting the new page' do
    visit new_stripe_url

    assert_text 'Credit or debit card'
  end
end
