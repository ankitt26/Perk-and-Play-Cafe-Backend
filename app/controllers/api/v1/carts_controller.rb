class Api::V1::CartsController < ApplicationController
  # before_action :set_cart, only: %i[show update destroy]
  load_and_authorize_resource

  # GET /carts
  def index
    @carts = current_user.cart.foods
    render json: @carts
  end

  # POST /carts
  def create
    @cart = Cart.new(cart_params)

    if @cart.save
      render json: @cart, status: :created
    else
      render json: @cart.errors, status: :unprocessable_entity
    end
  end

  # # PATCH/PUT /carts/1
  # def update

  #   if @cart.update(cart_params)
  #     render json: @cart
  #   else
  #     render json: @cart.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /carts/1
  # def destroy
  #   @cart.destroy
  # end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_cart
  #   @cart = Cart.find(params[:id])
  # end

  # Only allow a list of trusted parameters through.
  def cart_params
    params.require(:cart).permit(:user_id).merge(user_id: current_user.id)
  end
end
