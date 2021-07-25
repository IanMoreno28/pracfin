class PresentersController < ApplicationController
  before_action :set_presenter, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /presenters or /presenters.json
  def index
    @presenters = Presenter.all
  end

  # GET /presenters/1 or /presenters/1.json
  def show
  end

  # GET /presenters/new
  def new
    @presenter = Presenter.new
  end

  # GET /presenters/1/edit
  def edit
  end

  # POST /presenters or /presenters.json
  def create
    @presenter = Presenter.new(presenter_params)

    respond_to do |format|
      if @presenter.save
        format.html { redirect_to @presenter, notice: "Presenter was successfully created." }
        format.json { render :show, status: :created, location: @presenter }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @presenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presenters/1 or /presenters/1.json
  def update
    respond_to do |format|
      if @presenter.update(presenter_params)
        format.html { redirect_to @presenter, notice: "Presenter was successfully updated." }
        format.json { render :show, status: :ok, location: @presenter }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @presenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presenters/1 or /presenters/1.json
  def destroy
    @presenter.destroy
    respond_to do |format|
      format.html { redirect_to presenters_url, notice: "Presenter was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presenter
      @presenter = Presenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def presenter_params
      params.require(:presenter).permit(:first_name, :last_name, :gender, :age)
    end
end
