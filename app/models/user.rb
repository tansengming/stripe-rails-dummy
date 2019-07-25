class User < ApplicationRecord
  include Stripe::Callbacks

  def say_hello
    puts 'hello!'
  end

  after_customer_updated! do |_customer, _event|
    User.new.say_hello
  end
end
