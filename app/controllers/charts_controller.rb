class ChartsController < ApplicationController
  before_action :set_chart, only: [:show, :update, :edit, :destroy]
  before_action :set_songs
  def index
    @charts = Chart.all
  end

  def show
  end

  def new
    @chart = Chart.new
    render partial: 'form'
  end

  def edit
    render partial: 'form'
  end

  def create
    @chart = Chart.new(chart_params)

    if @chart.save
      redirect_to charts_path
    else
      render :new
    end

  end

  def update
    if @chart.update(chart_params)
      redirect_to @chart
    else
      render :edit
    end
  end

  def destroy
    @chart.destroy
    redirect_to charts_path
  end

  private
    def chart_params
      params.require(:chart).permit(:genre)
    end

    def set_chart
      @chart = Chart.find(params[:id])
    end

    def set_songs
      @songs = Song.all
    end

end
