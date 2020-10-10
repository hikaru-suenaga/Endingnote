class PropertiesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @properties = Property.all
  end

  
  
  def show
        @property = Property.find(params[:id])
    end
    
    def new
        @property = Property.new
    end

    def create
        @property = Property.new(property_params)
        @property.user_id = current_user.id
            if @property.save
              redirect_to property_path(@property)
            else
              redirect_to :action => "new"
            end
          end

    def edit
        @property = Property.find(params[:id])
    end

    
    def update
      @property = Property.find(params[:id])
          if @property.update(property_params)
              redirect_to :action => "show", :id => @property.id
           else
              redirect_to :action => "new"
           end
          end
          
          
    def destroy
            Property.find(params[:id]).destroy
                   redirect_to action: :index
          end

          private
          def property_params
            params.require(:property).permit(:user_id,:account,:balance,:real_estate,:value,:insurance,:insurance_proceeds,:debt,:debt_amount)
          end      
end
