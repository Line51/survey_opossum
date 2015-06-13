class FormsController < ApplicationController

  def new
    @questions = Question.where(survey_id: params[:id]).all
    @form = Form.new(survey_id: params[:id])
    @questions.length.times do
      @form.responses.build
    end
  end

  def create
    @form = Form.new(form_params)
    @questions = Question.where(survey_id: params[:id]).all
    
    respond_to do |format|
      if @form.save
        format.html { redirect_to thankyou_forms_path, notice: 'Thank you for submitting your responses.' }
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
