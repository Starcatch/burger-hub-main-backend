class OrderBurgersController < ApplicationController
  before_action :set_order_burger, only: [:show, :update, :destroy]

  # GET /order_burgers
  def index
    @order_burgers = OrderBurger.all

    render json: @order_burgers
  end

  # GET /order_burgers/1
  def show
    render json: @order_burger
  end

  # POST /order_burgers
  def create
    @order_burger = OrderBurger.new(order_burger_params)

    if @order_burger.save
      render json: @order_burger, status: :created, location: @order_burger
    else
      render json: @order_burger.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /order_burgers/1
  def update
    if @order_burger.update(order_burger_params)
      render json: @order_burger
    else
      render json: @order_burger.errors, status: :unprocessable_entity
    end
  end

  # DELETE /order_burgers/1
  def destroy
    @order_burger.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_burger
      @order_burger = OrderBurger.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_burger_params
      params.require(:order_burger).permit(:order_id, :burgrer_id)
    end
end
