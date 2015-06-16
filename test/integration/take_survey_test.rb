require 'test_helper'

class TakeSurveyTest < ActionDispatch::IntegrationTest
  test "user can take survey" do
    get new_form_path(survey_id: surveys(:one).id)
    assert_select "input", 8

    post forms_path(form: { survey_id: surveys(:one).id, responses_attributes: { 0 =>
      {question_id: questions(:one).id, answer: "Yes", form_id: 1}, 1 =>
      {question_id: questions(:two).id, answer: "test", form_id: 1}}, commit: :submit_responses})

    assert response.body.match("Thank you")
    assert_select "input", 0


  end

  test "required questions must be answered" do
    get new_form_path(survey_id: surveys(:two).id)
    assert_select "input", 5

    post forms_path(form: { survey_id: surveys(:two).id, responses_attributes: { 0 =>
      {question_id: questions(:three).id, answer: "", form_id: 1}}, commit: :submit_responses})

    refute response.body.match("Thank you")

    post forms_path(form: { survey_id: surveys(:two).id, responses_attributes: { 0 =>
      {question_id: questions(:three).id, answer: "text", form_id: 1}}, commit: :submit_responses})

    assert response.body.match("Thank you")

  end
end
