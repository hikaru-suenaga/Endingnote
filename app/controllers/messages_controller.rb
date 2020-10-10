class MessagesController < ApplicationController
  before_action :authenticate_user!
  
    def index
    @messages = Message.all
    end

    
    def show
        @message = Message.find(params[:id])
    end
    
    def new
        @message= Message.new
    end

    def create
        @message = Message.new(message_params)
        @message.user_id = current_user.id
           
            if @message.save
              redirect_to messages_path
            else
              redirect_to :action => "new"
            end
          end
    
          


    def edit
            @message = Message.find(params[:id])
    end



    def update
        @message = Message.find(params[:id])
            if @message.update(message_params)
                redirect_to :action => "show", :id => @message.id
             else
                redirect_to :action => "new"
             end
            end
    
    
    def destroy
         Message.find(params[:id]).destroy
                redirect_to action: :index
    end

          private
          def message_params
            params.require(:message).permit(:user_id,:title,:body)
          end       
end
