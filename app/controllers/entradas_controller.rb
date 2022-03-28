class EntradasController < ApplicationController
  before_action :set_entrada, only:[:show, :update, :edit, :destroy]

  def index
    @user = current_user
      @entradas = policy_scope(entrada).order(created_at: :desc)
  end

  def show
    authorize @entrada
  end

  def new
    @event = Event.find(params[:id])
    @entrada = Entrada.new
    authorize @entrada
    authorize @event
  end

  def create
    @entrada = Entrada.new(entrada_params)
    authorize @entrada
    @entrada.event = Event.find(params[:event_id])
    if @entrada.save
      redirect_to entrada_path(@entrada)
    else
      render "new"
    end
  end

  def update
    authorize @entrada
    @entrada.update(entrada_params)
    redirect_to entrada_path(@entrada)
  end

  def edit
    authorize @entrada
  end

  def destroy
    authorize @entrada
    @entrada.destroy
    redirect_to entrada_index_path
  end

  private

  def set_entrada
    @entrada = Entrada.find(params[:id])
  end

  def entrada_params
    params.require(:entrada).permit(:precio, :categoria, :fechaslimite)
  end
  
  # I m just checking if the push origin master is still working after some config
end
end
