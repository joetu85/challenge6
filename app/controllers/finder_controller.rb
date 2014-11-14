class FinderController < ApplicationController
  def index
    @customers = Customer.all
  end
  
  def alphabetized
    @customer_alphabetized = Customer.order(:fullname)
  end
  
  def missingEmail
    @customer_missing_email = Array.new
    Customer.all.each do |customer|
      if customer.email.empty?
        @customer_missing_email << customer
      end
    end
  end
end
