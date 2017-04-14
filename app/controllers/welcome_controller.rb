class WelcomeController < ApplicationController
   def index
      flash[:notice] = "morning！"
   end
end
