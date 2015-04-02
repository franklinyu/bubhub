class User < ActiveRecord::Base
<<<<<<< HEAD
  attr_reader :first_name, :pin
=======

  attr_accessor :firstName, :lastName, :bMail, :BNumber, :pin, :phoneNumber, :BUCardNumber

>>>>>>> 81766e5520bed0b1bcae9a935c24f3c324d96a10
end
