class UnitsController < ApplicationController
  before_action :set_unit, only: %i[ show edit update destroy ]
  skip_before_action :login_required, only: [:new, :create]

  def index
    @units = Unit.all
  end

  def show
  end

  def new
    @unit = Unit.new
  end

  def edit
  end

  def create
    @unit = Unit.new(unit_params)

    respond_to do |format|
      if @unit.save
        format.html { redirect_to new_user_path, notice: "部署[#{@unit.name}]が追加されました" }
        format.json { render :show, status: :created, location: @unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @unit.update(unit_params)
        format.html { redirect_to unit_url(@unit), notice: "所属部署が編集されました." }
        format.json { render :show, status: :ok, location: @unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @unit.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @unit.destroy
    respond_to do |format|
      format.html { redirect_to units_url, notice: "所属部署が削除されました." }
      format.json { head :no_content }
    end
  end

  private
    def set_unit
      @unit = Unit.find(params[:id])
    end

    def unit_params
      params.require(:unit).permit(:name)
    end
end
