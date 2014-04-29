class TendersController < ApplicationController
  before_action :set_tender, only: [:show, :edit, :update, :destroy]

  # GET /tenders
  def index
    @tenders = Tender.order(:created_at).page params[:page]
  end

  # GET /tenders/1
  def show
  end

  # GET /tenders/new
  def new
    @tender = Tender.new
  end

  # GET /tenders/1/edit
  def edit
  end

  # POST /tenders
  def create
    @tender = Tender.new(tender_params)
    @tender.user_id=current_user.id

    if @tender.save
      redirect_to @tender, notice: 'Tender was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tenders/1
  def update
    if @tender.update(tender_params)
      redirect_to @tender, notice: 'Tender was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tenders/1
  def destroy
    @tender.destroy
    redirect_to tenders_url, notice: 'Tender was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tender
      @tender = Tender.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def tender_params
      params.require(:tender).permit(:user_id, :title, :description)
    end
end
