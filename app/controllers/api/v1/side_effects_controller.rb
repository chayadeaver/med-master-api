class Api::V1::SideEffectsController < ApplicationController
  before_action :set_side_effect, only: [:show, :update, :destroy]

  def index
    @side_effects = SideEffect.all
    render json: SideEffectSerializer.new(@side_effects).serializable_hash.to_json
  end

  def show
    render json: SideEffectSerializer.new(@side_effect).serializable_hash.to_json
  end

  def create
    @side_effect = side_effect.new(side_effect_params)
    if @side_effect.save
      session[:side_effect_id] = @side_effect.index
      render json: SideEffectSerializer.new(@side_effect), status: :created
    else
      resp = {
        error: @side_effect.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @side_effect.update(side_effect_params)
      render json: @side_effect
    else
      render json: @side_effect.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @side_effect.destroy
  end




  private

    def set_side_effect
      @side_effect = side_effect.find_by(id: params[:id])
    end

    def side_effect_params
      params.require(:side_effect).permit(:name, :email, :password)
    end
end
