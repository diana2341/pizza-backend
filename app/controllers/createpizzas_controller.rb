class CreatepizzasController < ApplicationController
    def index
        createpizzas=Createpizza.all
        render json:createpizzas
    end

    def show
        createpizza=Createpizza.find(params[:id])
        render json:createpizza
    end
    def create
        createpizza=Createpizza.new(createpizza_params)
        if createpizza.save
            render json:createpizza 
        else 
            render {error:'error:unable to create createpizza'}
        end
    end

    private
    def createpizza_params
        params.require(:createpizza).permit(:topping_id,:name,:user_id,:price,:size)
    end
end
