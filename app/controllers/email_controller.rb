class EmailController < ApplicationController

    def contact
        @data = Email.new(params[:email])
      end
    
      def create
        @data = Email.new(params[:email])
        @data.request = request
          if @data.deliver
            @data = Email.new
        end
      end

end
