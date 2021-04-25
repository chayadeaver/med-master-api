class Api::V1::JournalsController < ApplicationController
  before_action :set_journal, only: [:show, :update, :destroy]

  def index
    @journals = Journal.all
    render json: JournalSerializer.new(@journals).serializable_hash.to_json
  end

  def show
    render json: JournalSerializer.new(@journal).serializable_hash.to_json
  end

  def create
    @journal = Journal.new(journal_params)
    if @journal.save
      render json: JournalSerializer.new(@journal), status: :created
    else
      resp = {
        error: @journal.errors.full_messages.to_sentence
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  def update
    if @journal.update(journal_params)
      render json: @journal
    else
      render json: @journal.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @journal.destroy
  end




  private

    def set_journal
      @journal = Journal.find_by(id: params[:id])
    end

    def journal_params
      params.require(:journal).permit(:date, :entry, :user_id)
    end
end
