class SqueaksController < ApplicationController
  before_action :set_squeak, only: [:edit, :update, :show]

  def new
    @squeak = Squeak.new
  end

  def create
    @squeak = Squeak.new(squeak_params)
    if @squeak.save
      redirect_to squeaks_path(@squeak)
    else
      redirect_to squeaks_path(@squeak)
    end
  end

  def show
  end

  def index
    @squeak = Squeak.new
    @squeaks = Squeak.order('created_at DESC')
  end

  private

  def set_squeak
    @squeak = Squeak.find(params[:id])
  end

  def squeak_params
    params.require(:squeak).permit(:user, :body)
  end
end

