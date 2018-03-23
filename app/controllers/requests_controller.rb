class RequestsController < ApplicationController
    before_action :authenticate_user!
    def new
        @request = Request.new
    end
    
    def index
        @requests = current_user.requests
    end

    def show
        @request = Request.find(params[:id])
    end
    
    def create
        @request = Request.new(request_params)
        if @request.save
            flash[:notice] = 's u c c ess'
            redirect_to  new_personal_message_path(receiver_id: @request.user)
        else
            flash[:notice] = 'r e a l s a d b o i h o u r s'
            redirect_to books_path
        end
    end

    def destroy
        request = Request.find(params[:id])
        if Book.find(request.book.id).update(availability: false)
            flash[:success] = 'Aceptado'
            redirect_to requests_path
        end
    end

    private
    
    def request_params
        params.require(:request).permit(:book_id, :user_id)
    end
end