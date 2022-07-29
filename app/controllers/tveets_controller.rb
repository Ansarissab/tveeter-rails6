class TveetsController < ApplicationController
  before_action :set_tveet, only: %i[ show edit update destroy ]

  # GET /tveets or /tveets.json
  def index
    @tveets = Tveet.all
  end

  # GET /tveets/1 or /tveets/1.json
  def show
  end

  # GET /tveets/new
  def new
    @tveet = Tveet.new
  end

  # GET /tveets/1/edit
  def edit
  end

  # POST /tveets or /tveets.json
  def create
    @tveet = Tveet.new(tveet_params)

    respond_to do |format|
      if @tveet.save
        format.html { redirect_to tveet_url(@tveet), notice: "Tveet was successfully created." }
        format.json { render :show, status: :created, location: @tveet }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tveet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tveets/1 or /tveets/1.json
  def update
    respond_to do |format|
      if @tveet.update(tveet_params)
        format.html { redirect_to tveet_url(@tveet), notice: "Tveet was successfully updated." }
        format.json { render :show, status: :ok, location: @tveet }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tveet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tveets/1 or /tveets/1.json
  def destroy
    @tveet.destroy

    respond_to do |format|
      format.html { redirect_to tveets_url, notice: "Tveet was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tveet
      @tveet = Tveet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tveet_params
      params.require(:tveet).permit(:body, :likes_count, :retweets_count)
    end
end
