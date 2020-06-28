class ToppingsController < ApplicationController
    def index
        toppings=Topping.all
        render json:toppings
    end

    def show
        topping=Topping.find(params[:id])
        render json:topping
    end
    def create
        topping=Topping.new(topping_params)
        if topping.save
            render json:animal 
        else 
            render {error:'error:unable to create topping'}
        end
    end

    private
    def topping_params
        params.require(:animal).permit(:name,:createpizza_id,:price)
    end
end
