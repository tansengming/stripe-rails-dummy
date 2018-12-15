class User < ApplicationRecord
  include Stripe::Callbacks

  def say_something
    puts say_hello
  end

  def say_tootsie
    'tootsie!'
  end

  def say_hello
    'hello!'
  end

  after_customer_updated! do |customer, event|
    User.new.say_something
  end
end
