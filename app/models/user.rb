class User < ApplicationRecord
  include Stripe::Callbacks

  def say_something
    say_hello
    # say_tootsie
  end

  def say_tootsie
    puts 'tootsie!'
  end

  def say_hello
    puts 'hello!'
  end

  after_customer_updated! do |customer, event|
    User.new.say_something
  end
end
