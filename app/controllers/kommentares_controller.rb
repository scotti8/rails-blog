class KommentaresController < ApplicationController
  before_action :set_kommentare, only: %i[ show edit update destroy ]

  # GET /kommentares or /kommentares.json
  def index
    @kommentares = Kommentare.all
    
  end

  # GET /kommentares/1 or /kommentares/1.json
  def show
  end

  # GET /kommentares/new
  def new
    @kommentare = Kommentare.new
  end

  # GET /kommentares/1/edit
  def edit
  end

  # POST /kommentares or /kommentares.json
  def create
    @kommentare = Kommentare.new(kommentare_params)

    respond_to do |format|
      if @kommentare.save
        format.html { redirect_to kommentare_url(@kommentare), notice: "Kommentare was successfully created." }
        format.json { render :show, status: :created, location: @kommentare }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kommentare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kommentares/1 or /kommentares/1.json
  def update
    respond_to do |format|
      if @kommentare.update(kommentare_params)
        format.html { redirect_to kommentare_url(@kommentare), notice: "Kommentare was successfully updated." }
        format.json { render :show, status: :ok, location: @kommentare }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kommentare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kommentares/1 or /kommentares/1.json
  def destroy
    @kommentare.destroy

    respond_to do |format|
      format.html { redirect_to kommentares_url, notice: "Kommentare was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kommentare
      @kommentare = Kommentare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kommentare_params
      params.require(:kommentare).permit(:posts_id, :zeit, :text)
    end
end
