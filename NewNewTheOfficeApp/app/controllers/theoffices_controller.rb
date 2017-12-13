class TheofficesController < ApplicationController
  def index
    @theoffices = Theoffice.all
  end

  def show
    @theoffice = Theoffice.find(params[:id])
  end

  def new
    @theoffice = Theoffice.new
  end

  def create
    @theoffice = Theoffice.new(theoffice_params)
    if @theoffice.save
      redirect_to theoffice_path(@theoffice)
    else
      render :new
    end
  end

  def edit
    @theoffice = Theoffice.find(params[:id])
  end

  def update
    @theoffice = Theoffice.find(params[:id])
    if @theoffice.update(theoffice_params)
      redirect_to theoffice_path(@theoffice)
    else
      redirect_to theoffice_edit_path(@theoffice)
    end
  end

  def destroy
    @theoffice = Theoffice.find(params[:id])
    @theoffice.delete
    redirect_to theoffice_path
  end

  private
  def theoffice_params
    params.require(:quote).permit(:quote, :person, :season, :episode)
  end
  end
