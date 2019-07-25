class User < ApplicationRecord
  include Stripe::Callbacks

  def say_tootsie
    puts 'tootsie!'
  end

  def say_hello
    puts 'hello!'
  end

  after_customer_updated! do |_customer, _event|
    # User.new.say_hello
    User.new.say_tootsie
  end
end
