class LabelsController < ApplicationController
  before_action :set_label, only: %i[ show edit update destroy ]

  def index
    @labels = Label.all
  end

  def show
  end

  def new
    @label = Label.new
  end

  def edit
  end

  def create
    @label = Label.new(label_params)
    respond_to do |format|
      if @label.save
        format.html { redirect_to label_url(@label), notice: "Label was successfully created." }
        format.json { render :show, status: :created, location: @label }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @label.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @label.update(label_params)
        format.html { redirect_to label_url(@label), notice: "Label was successfully updated." }
        format.json { render :show, status: :ok, location: @label }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @label.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @label.destroy
    respond_to do |format|
      format.html { redirect_to labels_url, notice: "Label was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_label
      @label = Label.find(params[:id])
    end

    def label_params
      params.require(:label).permit(:name)
    end
end
