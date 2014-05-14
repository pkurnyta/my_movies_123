require 'spec_helper'

describe MoviesController do

  before do
    @movie = Tmdb::Movie.detail(68721)
  end

  it "should return a id" do
    @movie.id.should eq(68721)
  end

  it "should return a imdb id" do
    @movie.imdb_id.should eq("tt1300854")
  end

  it "should return a original title" do
    @movie.original_title.should eq("Iron Man 3")
  end

  it "should return if for adults" do
    @movie.adult.should eq(false)
  end

  it "should return a backdrop path" do
    @movie.backdrop_path.should eq("/n9X2DKItL3V0yq1q1jrk8z5UAki.jpg")
  end

  it "should return if belongs to collection" do
    @movie.belongs_to_collection.blank?
  end

  it "should return a budget" do
    @movie.budget.should eq(200000000)
  end

  it "should return a homepage" do
    @movie.homepage.should eq("http://marvel.com/ironman3")
  end

  # it "should return a popularity" do
  #   @movie.popularity.should eq("Iron Man 3")
  # end

  it "should return a poster path" do
    @movie.poster_path.should eq("/1Ilv6ryHUv6rt9zIsbSEJUmmbEi.jpg")
  end

  it "should return a release date" do
    @movie.release_date.should eq("2013-05-03")
  end

  it "should return a title" do
    @movie.title.should eq("Iron Man 3")
  end

  it "should return a revenue" do
    @movie.revenue.should eq(1198459803)
  end

  it "should return a tagline" do
    @movie.tagline.should eq("Unleash the power behind the armor.")
  end

  it "should return a runtime" do
    @movie.runtime.should eq(130)
  end

  it "should return a vote_count" do
    @movie.vote_count.should eq(4462)
  end

  it "should return a vote_average" do
    @movie.vote_average.should eq(6.8)
  end

  it "should return a status" do
    @movie.status.should eq("Released")
  end
    
end