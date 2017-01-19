require 'test_helper'

class StudentFeedsControllerTest < ActionController::TestCase
  setup do
    @student_feed = student_feeds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_feeds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_feed" do
    assert_difference('StudentFeed.count') do
      post :create, student_feed: { company_id: @student_feed.company_id, company_id: @student_feed.company_id, companyname: @student_feed.companyname, email: @student_feed.email, feeback: @student_feed.feeback, rollno: @student_feed.rollno, year: @student_feed.year }
    end

    assert_redirected_to student_feed_path(assigns(:student_feed))
  end

  test "should show student_feed" do
    get :show, id: @student_feed
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_feed
    assert_response :success
  end

  test "should update student_feed" do
    patch :update, id: @student_feed, student_feed: { company_id: @student_feed.company_id, company_id: @student_feed.company_id, companyname: @student_feed.companyname, email: @student_feed.email, feeback: @student_feed.feeback, rollno: @student_feed.rollno, year: @student_feed.year }
    assert_redirected_to student_feed_path(assigns(:student_feed))
  end

  test "should destroy student_feed" do
    assert_difference('StudentFeed.count', -1) do
      delete :destroy, id: @student_feed
    end

    assert_redirected_to student_feeds_path
  end
end
