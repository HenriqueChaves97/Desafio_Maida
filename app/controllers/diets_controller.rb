class DietsController < ApplicationController
  before_action :set_diet, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    #Faz query por id de usuario em diet
    @diets = Diet.where(:user_id => current_user)
  end

  def show
  end

  def new
    #verifica se existe tabela onde o user_id é igual ao usuario logado
    if Diet.exists?(:user_id => current_user)
      #A view new é redirecionada para diets se existir o id do usuario na tabela Dit
      redirect_to '/diets'
    else
      #Se o id de usuario não existir na tabela, então o formulario é carregado
      @diet = current_user.build_diet
    end
  end

  def edit
  end

  def create
    @diet = current_user.build_diet(diet_params)
    
    respond_to do |format|
      if @diet.save
        format.html { redirect_to @diet, notice: 'Diet was successfully created.' }
        format.json { render :show, status: :created, location: @diet }
      else
        format.html { render :new }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @diet.update(diet_params)
        format.html { redirect_to @diet, notice: 'Diet was successfully updated.' }
        format.json { render :show, status: :ok, location: @diet }
      else
        format.html { render :edit }
        format.json { render json: @diet.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @diet.destroy
    respond_to do |format|
      format.html { redirect_to diets_url, notice: 'Diet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diet
      @diet = Diet.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def diet_params
      params.require(:diet).permit(:data_inicial, :data_final, :peso_atual, :peso_ideal, :altura)
    end
end
