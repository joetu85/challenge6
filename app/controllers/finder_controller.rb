class FinderController < ApplicationController
  def index
    customer = Customers.all
  end
end
