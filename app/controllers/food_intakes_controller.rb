class FoodIntakesController < ApplicationController
  before_action :set_food_intake, only: %i[ show edit update destroy ]

  # GET /food_intakes or /food_intakes.json
  def index
    @food_intakes = FoodIntake.all
  end

  # GET /food_intakes/1 or /food_intakes/1.json
  def show
  end

  # GET /food_intakes/new
  def new
    @food_intake = FoodIntake.new
  end

  # GET /food_intakes/1/edit
  def edit
  end

  # POST /food_intakes or /food_intakes.json
  def create
    @food_intake = FoodIntake.new(food_intake_params)

    respond_to do |format|
      if @food_intake.save
        format.html { redirect_to root_path, notice: "Food intake was successfully created." }
        format.json { render :show, status: :created, location: @food_intake }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @food_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /food_intakes/1 or /food_intakes/1.json
  def update
    respond_to do |format|
      if @food_intake.update(food_intake_params)
        format.html { redirect_to root_path, notice: "Food intake was successfully updated." }
        format.json { render :show, status: :ok, location: @food_intake }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @food_intake.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_intakes/1 or /food_intakes/1.json
  def destroy
    @food_intake.destroy!

    respond_to do |format|
      format.html { redirect_to root_path, notice: "Food intake was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food_intake
      @food_intake = FoodIntake.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_intake_params
      params.require(:food_intake).permit(:name, :intake_type, :intake_time, :calories)
    end
end
