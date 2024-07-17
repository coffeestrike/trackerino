class FluidIntakesController < ApplicationController
  before_action :set_fluid_intake, only: %i[ show edit update destroy ]

  # GET /fluid_intakes or /fluid_intakes.json
  def index
    @fluid_intakes = FluidIntake.all
  end

  # GET /fluid_intakes/1 or /fluid_intakes/1.json
  def show
  end

  # GET /fluid_intakes/new
  def new
    @fluid_intake = FluidIntake.new
  end

  # GET /fluid_intakes/1/edit
  def edit
  end

  # POST /fluid_intakes or /fluid_intakes.json
  def create
    @fluid_intake = FluidIntake.new(fluid_intake_params)

    respond_to do |format|
      if @fluid_intake.save
        format.html { redirect_to root_path, notice: "Fluid intake was successfully created." }
        format.json { render :show, status: :created, location: @fluid_intake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fluid_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fluid_intakes/1 or /fluid_intakes/1.json
  def update
    respond_to do |format|
      if @fluid_intake.update(fluid_intake_params)
        format.html { redirect_to root_path(@fluid_intake), notice: "Fluid intake was successfully updated." }
        format.json { render :show, status: :ok, location: @fluid_intake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fluid_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fluid_intakes/1 or /fluid_intakes/1.json
  def destroy
    @fluid_intake.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Fluid intake was destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fluid_intake
      @fluid_intake = FluidIntake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fluid_intake_params
      params.require(:fluid_intake).permit(:name, :intake_type, :intake_time, :amount_ml)
    end
end
