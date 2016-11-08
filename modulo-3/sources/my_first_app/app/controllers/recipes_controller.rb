class RecipesController < ApplicationController
  def search
    if(params[:text]=='nil')
      return nil
    end
    @text = params[:text] || 'chicken'
    @recipes = Recipe.for(@text)
  end
end
