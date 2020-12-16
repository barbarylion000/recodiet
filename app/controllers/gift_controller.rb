class GiftController < ApplicationController
   def index
      Product.order("RANDOM()").first
   end
   
end
