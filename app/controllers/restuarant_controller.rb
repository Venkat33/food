class RestuarantController < ApplicationController


def create
  # @restuarant = Restuarant.new
  user = User.new({ username: 'sabari', email: 'workd@gmai.com'})
  user.save
end

end
