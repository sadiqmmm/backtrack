require 'test_helper'

class BacklinksControllerTest < ActionController::TestCase
  setup do
    @backlink = backlinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:backlinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create backlink" do
    assert_difference('Backlink.count') do
      post :create, backlink: { backlink_url: @backlink.backlink_url, method: @backlink.method, notes: @backlink.notes, project: @backlink.project, project_url: @backlink.project_url, published_at: @backlink.published_at }
    end

    assert_redirected_to backlink_path(assigns(:backlink))
  end

  test "should show backlink" do
    get :show, id: @backlink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @backlink
    assert_response :success
  end

  test "should update backlink" do
    patch :update, id: @backlink, backlink: { backlink_url: @backlink.backlink_url, method: @backlink.method, notes: @backlink.notes, project: @backlink.project, project_url: @backlink.project_url, published_at: @backlink.published_at }
    assert_redirected_to backlink_path(assigns(:backlink))
  end

  test "should destroy backlink" do
    assert_difference('Backlink.count', -1) do
      delete :destroy, id: @backlink
    end

    assert_redirected_to backlinks_path
  end
end
