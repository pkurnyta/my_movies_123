require 'spec_helper'
describe "home/index.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @now_playing = Tmdb::Movie.now_playing
  end

  it "displays search" do
    render
    expect(rendered).to include("Playing")
  end

  it "displays search input?" do
    render
    expect(rendered).to include("searchInput")
  end

end