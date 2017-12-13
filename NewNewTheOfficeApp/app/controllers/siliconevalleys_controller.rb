class SiliconevalleysController < ApplicationController

    def index
      @siliconevalleys = Siliconevalley.all
    end

    def show
      @siliconevalley = Siliconevalley.find(params[:id])
    end

    def new
      @siliconevalley = Siliconevalley.new
    end

    def create
      @siliconevalley = Siliconevalley.new(siliconevalley_params)
      if @siliconevalley.save
        redirect_to siliconevalley_path(@siliconevalley)
      else
        render :new
      end
    end

    def edit
      @siliconevalley = Siliconevalley.find(params[:id])
    end

    def update
      @siliconevalley = Siliconevalley.find(params[:id])
      if @siliconevalley.update(siliconevalley_params)
        redirect_to siliconevalley_path(@siliconevalley)
      else
        redirect_to siliconevalley_edit_path(@siliconevalley)
      end
    end

    def destroy
      @siliconevalley = Siliconevalley.find(params[:id])
      @siliconevalley.delete
      redirect_to siliconevalleys_path
    end

    private
    def siliconevalley_params
      params.require(:siliconevalley).permit(:quote, :person, :season, :episode)
    end
  end
