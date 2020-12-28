class EmailController < ApplicationController

    def index
        @data = Email.new(params[:email])
      end
    
      def create
        @data = Email.new(params[:email])
        @data.request = request
          if @data.deliver
            @data = Email.new
            flash[:email_success] = "Dziękujemy twoja wiadomość została wysłana."
            redirect_to root_path
            
          else
            flash[:email_error] = "Niestety nie udało się wysłać twojej wiadomości."
      end
    end

end
