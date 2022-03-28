class TransaccionsController < ApplicationController
 before_action :set_transaccion, only:[:show]

  def index
    @user = current_user
      @transaccions = policy_scope(transaccion).order(created_at: :desc)
  end

  def show
    authorize @transaccion
  end

  def new
    @entrada = Entrada.find(params[:id])
    @transaccion = transaccion.new
    authorize @transaccion
    authorize @entrada
  end

  def create
    @transaccion = transaccion.new(transaccion_params)
    authorize @transaccion
    @transaccion.entrada = Event.find(params[:entrada_id])
    @transaccion.user = current_user
    if @transaccion.save
      redirect_to transaccion_path(@transaccion)
    else
      render "new"
    end
  end

  private

  def set_transaccion
    @transaccion = transaccion.find(params[:id])
  end

  def transaccion_params
    params.require(:transaccion).permit(:pagada)
  end
  
  # I m just checking if the push origin master is still working after some config
end
end