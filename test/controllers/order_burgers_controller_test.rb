require 'test_helper'

class OrderBurgersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_burger = order_burgers(:one)
  end

  test "should get index" do
    get order_burgers_url, as: :json
    assert_response :success
  end

  test "should create order_burger" do
    assert_difference('OrderBurger.count') do
      post order_burgers_url, params: { order_burger: { burgrer_id: @order_burger.burgrer_id, order_id: @order_burger.order_id } }, as: :json
    end

    assert_response 201
  end

  test "should show order_burger" do
    get order_burger_url(@order_burger), as: :json
    assert_response :success
  end

  test "should update order_burger" do
    patch order_burger_url(@order_burger), params: { order_burger: { burgrer_id: @order_burger.burgrer_id, order_id: @order_burger.order_id } }, as: :json
    assert_response 200
  end

  test "should destroy order_burger" do
    assert_difference('OrderBurger.count', -1) do
      delete order_burger_url(@order_burger), as: :json
    end

    assert_response 204
  end
end
