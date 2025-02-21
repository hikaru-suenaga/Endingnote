class RequestsController < ApplicationController
  before_action :authenticate_user!
  
    def index
      @requests = Request.all
    end
  
    def show
        @request = Request.find(params[:id])
    end
    
    def new
        @request = Request.new
    end

    def create
        @request = Request.new(request_params)
        @request.user_id = current_user.id
            if @request.save
              redirect_to request_path(@request)
            else
              redirect_to :action => "new"
            end
          end
    

    def edit
            @request = Request.find(params[:id])
    end



    def update
        @request = Request.find(params[:id])
            if @request.update(request_params)
                redirect_to :action => "show", :id => @request.id
             else
                redirect_to :action => "new"
             end
            end

    def destroy
            Request.find(params[:id]).destroy
                     redirect_to action: :index
            end   
    
    
    
    
            private
            def request_params
            params.require(:request).permit(:user_id,:illness,:care,:property,:funeral,:digital)
            end      
end
