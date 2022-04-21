class EventsController < ApplicationController
before_action :set_event, only:[:show, :update, :edit, :destroy]

  def index
    
      @events = policy_scope(event).order(created_at: :desc)
  end

  def show
    # authorize @event
  end

  def new
    @event = Event.new
    # authorize @event
  end

  def create
    @event = Event.new(event_params)
    # authorize @event
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
    else
      render "new"
    end
  end

  def update
    # authorize @event
    @event.update(event_params)
    redirect_to event_path(@event)
  end

  def edit
    # authorize @event
  end

  def destroy
    # authorize @event
    @event.destroy
    redirect_to root_path
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:nombre, :direccion, :capacidad, :fecha, :horarioinicio, :horariofinal, :banner, :imgname, :imgs, :imgfondo, :colorprimario, :colorsecundario, :finalizado, :descripcion, :sponsors)
  end
  
  # I m just checking if the push origin master is still working after some config
end


