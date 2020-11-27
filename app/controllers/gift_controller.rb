class GiftController < ApplicationController
   def index
      array = ["red","green","yellow"]
      3.times do
      p array[rand(3)]
end
   end
   
end
