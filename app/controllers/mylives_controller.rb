class MylivesController < ApplicationController
  before_action :authenticate_user!
  
    def index
      @mylives = Mylife.all
    end

    def show
        @mylife = Mylife.find(params[:id])
    end
    
    def new   
        @mylife = Mylife.new 
    end
    
    def create
        @mylife = Mylife.new(mylife_params)
        @mylife.user_id = current_user.id
        
           
            if @mylife.save
              redirect_to mylife_path(@mylife)
            else
              redirect_to :action => "show"
            end
          end
    

    def edit
            @mylife = Mylife.find(params[:id])
          end

    def update
            @mylife = Mylife.find(params[:id])
            if @mylife.update(mylife_params)
              redirect_to :action => "show", :id => @mylife.id
            else
              redirect_to :action => "new"
            end
          end      


    def destroy
            Mylife.find(params[:id]).destroy
                   redirect_to action: :index
          end

          private
          def mylife_params
            params.require(:mylife).permit(:user_id,:profile,:family,:life,:todo,:memories,:gallery)
          end      
    end    

