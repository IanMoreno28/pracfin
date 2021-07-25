require "test_helper"

class PresentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @presenter = presenters(:one)
  end

  test "should get index" do
    get presenters_url
    assert_response :success
  end

  test "should get new" do
    get new_presenter_url
    assert_response :success
  end

  test "should create presenter" do
    assert_difference('Presenter.count') do
      post presenters_url, params: { presenter: { age: @presenter.age, first_name: @presenter.first_name, gender: @presenter.gender, last_name: @presenter.last_name } }
    end

    assert_redirected_to presenter_url(Presenter.last)
  end

  test "should show presenter" do
    get presenter_url(@presenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_presenter_url(@presenter)
    assert_response :success
  end

  test "should update presenter" do
    patch presenter_url(@presenter), params: { presenter: { age: @presenter.age, first_name: @presenter.first_name, gender: @presenter.gender, last_name: @presenter.last_name } }
    assert_redirected_to presenter_url(@presenter)
  end

  test "should destroy presenter" do
    assert_difference('Presenter.count', -1) do
      delete presenter_url(@presenter)
    end

    assert_redirected_to presenters_url
  end
end
