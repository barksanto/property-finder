class PropsController < ApplicationController
  before_action :set_prop, only: %i[ show edit update destroy ]

  # GET /props or /props.json
  def index
    @props = Prop.all
  end

  # GET /props/1 or /props/1.json
  def show
  end

  # GET /props/new
  def new
    @prop = Prop.new
  end

  # GET /props/1/edit
  def edit
  end

  # POST /props or /props.json
  def create
    @prop = Prop.new(prop_params)

    respond_to do |format|
      if @prop.save
        format.html { redirect_to @prop, notice: "Prop was successfully created." }
        format.json { render :show, status: :created, location: @prop }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /props/1 or /props/1.json
  def update
    respond_to do |format|
      if @prop.update(prop_params)
        format.html { redirect_to @prop, notice: "Prop was successfully updated." }
        format.json { render :show, status: :ok, location: @prop }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @prop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /props/1 or /props/1.json
  def destroy
    @prop.destroy
    respond_to do |format|
      format.html { redirect_to props_url, notice: "Prop was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prop
      @prop = Prop.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def prop_params
      params.require(:prop).permit(:name, :address, :price, :rooms, :bathrooms)
    end
end
