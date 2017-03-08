class PicsController < ApplicationController
  before_action :find_pic_id, only: [:show, :update, :edit, :destroy]
  def index
    @pics = Pic.all.order('created_at DESC')
  end

  def new
    @pic = Pic.new
  end

  def show
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: 'Cool u post a comment'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic, notice: 'cool update!'
    else
      render :edit
    end
  end

  def destroy
    redirect_to root_path, notice: 'Pic was deleted' if @pic.destroy
  end

  private

  def find_pic_id
    @pic = Pic.find(params[:id])
  end

  def pic_params
    params.require(:pic).permit([:title, :description])
  end
end
