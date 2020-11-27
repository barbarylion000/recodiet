class GraffController < ApplicationController
   def index
      @tasks = current_user.tasks.all
      @data = Report.all
   end
end
