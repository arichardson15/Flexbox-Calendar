class LocationsController < ApplicationController
  before_action :set_location, only: %i[ show edit update destroy ]

  # GET /locations or /locations.json
  def index
    @locations = Location.all
  end

  # GET /locations/1 or /locations/1.json
  def show
  end

  # GET /locations/new
  def new
    @location = Location.new
  end

  # GET /locations/1/edit
  def edit
  end

  # POST /locations or /locations.json
  def create
    @location = Location.new(location_params)

    respond_to do |format|
      if @location.save
        format.html { redirect_to location_url(@location), notice: "Location was successfully created." }
        format.json { render :show, status: :created, location: @location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /locations/1 or /locations/1.json
  def update
    respond_to do |format|
      if @location.update(location_params)
        format.html { redirect_to location_url(@location), notice: "Location was successfully updated." }
        format.json { render :show, status: :ok, location: @location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /locations/1 or /locations/1.json
  def destroy
    @location.destroy

    respond_to do |format|
      format.html { redirect_to locations_url, notice: "Location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_location
      @location = Location.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def location_params
      params.require(:location).permit(:id, :name, :city)
    end
end

class WorkOrdersController < ApplicationController
  before_action :set_work_order, only: %i[ show edit update destroy ]

  # GET /work_orders or /work_orders.json
  def index
    @work_orders = WorkOrder.all
  end

  # GET /work_orders/1 or /work_orders/1.json
  def show
  end

  # GET /work_orders/new
  def new
    @work_order = WorkOrder.new
  end

  # GET /work_orders/1/edit
  def edit
  end

  # POST /work_orders or /work_orders.json
  def create
    @work_order = WorkOrder.new(work_order_params)

    respond_to do |format|
      if @work_order.save
        format.html { redirect_to work_order_url(@work_order), notice: "Work order was successfully created." }
        format.json { render :show, status: :created, location: @work_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_orders/1 or /work_orders/1.json
  def update
    respond_to do |format|
      if @work_order.update(work_order_params)
        format.html { redirect_to work_order_url(@work_order), notice: "Work order was successfully updated." }
        format.json { render :show, status: :ok, location: @work_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @work_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_orders/1 or /work_orders/1.json
  def destroy
    @work_order.destroy

    respond_to do |format|
      format.html { redirect_to work_orders_url, notice: "Work order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_work_order
    @work_order = WorkOrder.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def work_order_params
    params.require(:work_order).permit(:id, :technician_id, :location_id, :time, :duration, :price)
  end
end

