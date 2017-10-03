class CountriesController < ApplicationController
  def index
    @countries = Country.all
  end

  def new
  

  end

  def create
    new_country = Country.new
    new_country.name = params[:name]
    new_country.population = params[:population]
    new_country.language = params[:language]
    new_country.flag_url = params[:flag_url]
    new_country.president = params[:president]

    new_country.save

    redirect_to '/countries'
  end

  def show
    @countries = Country.find(params[:id])
  end

  def edit
    @countries = Country.find(params[:id])
  end

  def update
    @country = Country.find(params[:id])
    country.name = params[:name]
    movie.population = params[:population]
    movie.language = params[:language]
    movie.president = params[:president]
    movie.flag_url = params[:flag_url]

    movie.save

    redirect_to "/countries/#{country.id}"
  end

  def destroy
    country = Country.find(params[:id])
    country.delete
    redirect_to "/countries"
  end
end
