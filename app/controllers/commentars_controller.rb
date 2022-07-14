class CommentarsController < ApplicationController
  before_action :set_commentar, only: %i[ show edit update destroy ]

  # GET /commentars or /commentars.json
  def index
    @commentars = Commentar.all
    @artikels = Artikel.all
  end

  # GET /commentars/1 or /commentars/1.json
  def show
    @commentar = Commentar.find params[:id]
  end

  # GET /commentars/new
  def new
    @commentar = Commentar.new
    if params[:artikel_id]
      @artikel_id = params[:artikel_id]
    else @artikel_id = ''
    end
  end

  # GET /commentars/1/edit
  def edit
    @commentar = Commentar.find params[:id]
  end

  # POST /commentars or /commentars.json
  def create
    @commentar = Commentar.new(commentar_params)

    respond_to do |format|
      if @commentar.save
        format.html { redirect_to commentar_url(@commentar), notice: "Commentar was successfully created." }
        format.json { render :show, status: :created, location: @commentar }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @commentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commentars/1 or /commentars/1.json
  def update
    respond_to do |format|
      if @commentar.update(commentar_params)
        format.html { redirect_to root_path, notice: "Commentar was successfully updated." }
        format.json { render :show, status: :ok, location: root_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @commentar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commentars/1 or /commentars/1.json
  def destroy
    @commentar.destroy

    respond_to do |format|
      format.html { redirect_to commentars_url, notice: "Commentar was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commentar
      @commentar = Commentar.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commentar_params
      params.require(:commentar).permit(:artikel_id, :zeit, :text)
    end
end
