class ProvidersController < ApplicationController
  before_action :set_provider, only: [:show, :edit, :update, :destroy]

  # GET /providers
  # GET /providers.json
  def index
    @providers = Provider.all
  end

  # GET /providers/1
  # GET /providers/1.json
  def show
  end

  # GET /providers/new
  def new
    @provider = Provider.new
  end

  # GET /providers/1/edit
  def edit
  end

  # POST /providers
  # POST /providers.json
  def create
    @provider = Provider.new(provider_params)

    respond_to do |format|
      #validar datos
    if @provider.valid?
      if @provider.save
        #redirect_to :controller=>'groups',:action=>'invite',
        #reenviar a la vista index una vez qeu haya sido creado el item
        format.html { redirect_to  :controller=>'providers',:action=>'index' }
        #format.json { render :show notice: 'Registro agregado.'}
      else
        format.html { render :new }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    else
     format.html { render :new }
     format.json { render json: @provider.errors, status: :unprocessable_entity }       
      end
    end
  end

  # PATCH/PUT /providers/1
  # PATCH/PUT /providers/1.json
  def update
    respond_to do |format|
      if @provider.update(provider_params)
        format.html { redirect_to @provider, notice: 'Datos actualizados.' }
        format.json { render :show, status: :ok, location: @provider }
      else
        format.html { render :edi+t }
        format.json { render json: @provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /providers/1
  # DELETE /providers/1.json
  def destroy
    @provider.destroy
    respond_to do |format|
      format.html { redirect_to providers_url, notice: 'Registro eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider
      @provider = Provider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def provider_params
      params.require(:provider).permit(:nombreEmpresa, :telefonoEmpresa, :direccionEmpresa, :nombreContacto, :correoElectronico)
    end
end
