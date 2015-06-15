class FormsController < ApplicationController

  def new
    questions = Question.where(survey_id: params[:survey_id]).all
    @form = Form.new(survey_id: params[:survey_id])
    questions.each do |q|
      @form.responses.build(question: q)
    end
  end

  def create
    @form = Form.new(form_params)
    if @form.save
      flash.now[:notice] = "Thank you for submitting your responses."
    else
      render :new
    end
  end

  private def form_params
    params.require(:form).permit(:survey_id, responses_attributes: [:id, :answer, :question_id])
  end

end
