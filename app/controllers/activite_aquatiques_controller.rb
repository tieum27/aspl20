class ActiviteAquatiquesController < ApplicationController
  before_action :set_activite_aquatique, only: [:show, :edit, :update, :destroy]

  # GET /activite_aquatiques
  # GET /activite_aquatiques.json
  def index
    @activite_aquatiques = ActiviteAquatique.all
  end

  # GET /activite_aquatiques/1
  # GET /activite_aquatiques/1.json
  def show

  end

  # GET /activite_aquatiques/new
  def new
    @activite_aquatique = ActiviteAquatique.new
    @equipement = Equipement.where(:type_equipement => "Piscine")
  end

  # GET /activite_aquatiques/1/edit
  def edit
  end

  # POST /activite_aquatiques
  # POST /activite_aquatiques.json
  def create
    @activite_aquatique = ActiviteAquatique.new(activite_aquatique_params)

    respond_to do |format|
      if @activite_aquatique.save
        format.html { redirect_to @activite_aquatique, notice: 'Activite aquatique was successfully created.' }
        format.json { render :show, status: :created, location: @activite_aquatique }
      else
        format.html { render :new }
        format.json { render json: @activite_aquatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /activite_aquatiques/1
  # PATCH/PUT /activite_aquatiques/1.json
  def update
    respond_to do |format|
      if @activite_aquatique.update(activite_aquatique_params)
        format.html { redirect_to @activite_aquatique, notice: 'Activite aquatique was successfully updated.' }
        format.json { render :show, status: :ok, location: @activite_aquatique }
      else
        format.html { render :edit }
        format.json { render json: @activite_aquatique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /activite_aquatiques/1
  # DELETE /activite_aquatiques/1.json
  def destroy
    @activite_aquatique.destroy
    respond_to do |format|
      format.html { redirect_to activite_aquatiques_url, notice: 'Activite aquatique was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_activite_aquatique
      @activite_aquatique = ActiviteAquatique.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def activite_aquatique_params
      params.require(:activite_aquatique).permit(:nom, :age_group, :jour, :debut, :fin, :equipement_id, :complet)
    end
end
