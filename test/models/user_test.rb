require 'test_helper'
require 'stripe/rails/testing'

class UserTest < ActionMailer::TestCase
  test 'test reloading User model' do
    StripeMock.start
    Stripe::Rails::Testing.send_event 'customer.updated'
  end
end
