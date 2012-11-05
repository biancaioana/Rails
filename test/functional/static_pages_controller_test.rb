require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

#tests home page for a title

test "should have a title" do
    get :home
    assert_select 'title', "Home"
end


#Presence of email field in new user view form

test "should have email password fields" do
  get :new
  #select form
  assert_select 'form' do
    #select css element label from form and for each one do
  css_select("label").each do |l|
    #select css label with "Email" tag
    name = css_select(l, "Email") 
    #if exists respond "success"
    if name
       assert_response :success
    end
  end
end
end

end
