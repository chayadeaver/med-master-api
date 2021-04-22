class Api::V1::DosagesController < ApplicationController
  before_action :set_dosage, only: [:show, :update, :destroy]

  def index
    @dosages = Dosage.all
    render json: DosageSerializer.new(@dosages).serializable_hash.to_json
  end

  def show
    render json: DosageSerializer.new(@dosage).serializable_hash.to_json
  end

  def create
    @dosage = Dosage.new(dosage_params)
    if @dosage.save
      render json: DosageSerializer.new(@dosage), status: :created
    else
      resp = {
        error: @dosage.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @dosage.update(dosage_params)
      render json: @dosage
    else
      render json: @dosage.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @dosage.destroy
  end




  private

    def set_dosage
      @dosage = Dosage.find_by(id: params[:id])
    end

    def dosage_params
      params.require(:dosage).permit(:amount, :startDate, :endDate, :user_id, :medicine_id)
    end
end
