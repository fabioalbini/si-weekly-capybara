# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = 25.times.map do |i|
      new_product(id: i, name: "Product #{i}")
    end
  end

  def show
    @product = new_product(id: params[:id], name: "Product #{params[:id]}")
  end

  private

  def new_product(id:, name:)
    OpenStruct.new(id:, name:)
  end
end
