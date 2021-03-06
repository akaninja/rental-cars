class CarCategoriesController < ApplicationController
  def index
    @car_categories = CarCategory.all
  end

  def show
    @car_category = CarCategory.find(params[:id])
  end

  def new
    @car_category = CarCategory.new
  end

  def create
    @car_category = CarCategory.create(car_category_params)
    redirect_to @car_category     #Direciona a página para o objeto que foi criado
  end

  private

  def car_category_params
    params.require(:car_category).permit(:name, :daily_rate, 
                                         :car_insurance, :third_party_insurance)
  end
end