class FormsController < ApplicationController

  def new
    @form = Form.new
  end

  def create
    @form = Form.new(form_params)

    respond_to do |format|
      if @form.save
        format.html { redirect_to forms_thankyou_path, notice: 'Thank you for submitting your responses.' }
        format.json { render :show, status: :created, location: @form }
      else
        format.html { render :new }
        format.json { render json: @form.errors, status: :unprocessable_entity }
      end
    end
  end

  def thankyou
  end

  private def form_params
    params.require(:form).permit(:survey_id, responses_attributes: [:id, :answer, :question_id])
  end

end
