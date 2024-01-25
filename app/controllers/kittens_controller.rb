class KittensController < ApplicationController
  before_action :set_kitten, only: [:show, :edit, :update, :destroy]

  def index
    @kittens = Kitten.all
  end

  def show
    
  end

  def new
    @kitten = Kitten.new
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      redirect_to @kitten, notice: "kitten was successfuly saved"
    else
      render new_kitten_path, status: :unprocessable_entity, notice: 'Failed to save kitten to db'
    end
  end

  def edit
    
  end

  def update
    if @kitten.update(kitten_params)
      redirect_to @kitten, notice: 'Kitten was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @kitten.destroy
    redirect_to new_kitten_path, notice: 'Kitten was successfully destroyed.'
  end
  
  private
  def kitten_params
    params.require(:kitten).permit(:id, :name, :age, :cuteness, :softness)
  end

  def set_kitten
    @kitten = Kitten.find(params[:id])
  end
end
