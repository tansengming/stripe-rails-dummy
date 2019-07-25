class User < ApplicationRecord
  include Stripe::Callbacks

  def say_hello
    puts 'hello!'
  end

  def say_bye
    puts 'bye!'
  end

  after_customer_updated! do |_customer, _event|
    User.new.say_hello
    # User.new.say_bye
  end
end
