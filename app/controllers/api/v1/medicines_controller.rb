class Api::V1::MedicinesController < ApplicationController
  before_action :set_medicine, only: [:show, :update, :destroy]

  def index
    @medicines = Medicine.all
    render json: MedicineSerializer.new(@medicines).serializable_hash.to_json
  end

  def show
    render json: MedicineSerializer.new(@medicine).serializable_hash.to_json
  end

  def create
    @medicine = Medicine.new(medicine_params)
    if @medicine.save
      render json: MedicineSerializer.new(@medicine), status: :created
    else
      resp = {
        error: @medicine.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @medicine.update(medicine_params)
      render json: @medicine
    else
      render json: @medicine.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @medicine.destroy
  end




  private

    def set_medicine
      @medicine = Medicine.find_by(id: params[:id])
    end

    def medicine_params
      params.require(:medicine).permit(:name, :doctors_name)
    end
end
