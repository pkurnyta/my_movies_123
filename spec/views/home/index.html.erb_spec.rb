require 'spec_helper'
describe "home/index.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @now_playing = Tmdb::Movie.now_playing
  end

  # it "displays header" do
  #   render
  #   expect(rendered).to include("Editing gist")
  # end

  # it "displays lang headline" do
  #   render
  #   expect(rendered).to include("Lang")
  # end

  # it "displays description headline" do
  #   render
  #   expect(rendered).to include("Description")
  # end
 
  # it "renders _form partial" do
  #   render
  #   expect(view).to render_template(:partial => "_form", :count => 1)
  # end
 
  # it "displays Snippet data" do
  #   render
  #   expect(rendered).to include("snippet data")
  # end

  # it "displays description data" do
  #   render
  #   expect(rendered).to include("description data")
  # end
 
  # it "displays description data" do
  #   render
  #   expect(rendered).to include("Description")
  #   expect(rendered).to include("description data")
  # end

  # it "displays snippet data" do 
  #   render
  #   expect(rendered).to include("Snippet")
  #   expect(rendered).to include("snippet data")
  # end

  it "displays search" do
    render
    expect(rendered).to include("Playing")
  end

  it "displays search input?" do
    render
    expect(rendered).to include("searchInput")
  end

end