class PizzasController < ApplicationController
    def index
        pizzas=Pizza.all
        render json:pizzas
    end

    def show
        pizza=Pizza.find(params[:id])
        render json:pizza
    end
    def create
        pizza=Pizza.new(pizza_params)
        if pizza.save
            render json:pizza 
        else 
            render {error:'error:unable to create pizza'}
        end
    end

    private
    def pizza_params
        params.require(:pizza).permit(:topping,:price,:size,:image)
    end

end
