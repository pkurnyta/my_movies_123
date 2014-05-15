require 'spec_helper'
describe "movies/show.html.erb" do
 
  before(:each) do
    @configuration = Tmdb::Configuration.new
    @movie = Tmdb::Movie.detail(68721)
    @images = Tmdb::Movie.images(68721)
    @cast = Tmdb::Movie.casts(68721)
    @trailers = Tmdb::Movie.trailers(68721)
    @similar_movies = Tmdb::Movie.similar_movies(68721)
  end

  it "displays title?" do
    render
    expect(rendered).to include("Iron Man 3")
  end

  it "displays poster?" do
    render
    expect(rendered).to include("http://image.tmdb.org/t/p/w154/1Ilv6ryHUv6rt9zIsbSEJUmmbEi.jpg")
  end

  it "displays budget?" do
    render
    expect(rendered).to include("$200,000,000")
  end

  it "displays revenue?" do
    render
    expect(rendered).to include("$1,198,459,803")
  end

  it "displays if released?" do
    render
    expect(rendered).to include("Released")
  end

  it "displays runtime?" do
    render
    expect(rendered).to include("130")
  end

  it "displays release date?" do
    render
    expect(rendered).to include("03/05/2013")
  end

  it "displays trailer title?" do
    render
    expect(rendered).to include("Iron Man 3 Trailer 2 - HD")
  end

  it "displays rating title?" do
    render
    expect(rendered).to include("Rating")
  end

  it "displays rating?" do
    render
    expect(rendered).to include("6.8 from 4462 voters.")
  end

  it "displays trailer link?" do
    render
    expect(rendered).to include("http://www.youtube.com/watch?v=YLorLVa95Xo")
  end

  it "displays overview?" do
    render
    expect(rendered).to include("Overview")
  end

  it "displays correct overview?" do
    render
    expect(rendered).to include("The brash-but-brilliant industrialist Tony Stark faces an enemy whose reach knows no bounds.")
  end

  it "displays tagline title?" do
    render
    expect(rendered).to include("Tagline")
  end

  it "displays tagline?" do
    render
    expect(rendered).to include("Unleash the power behind the armor.")
  end

  it "displays genres title?" do
    render
    expect(rendered).to include("Genres")
  end

  it "displays genres?" do
    render
    expect(rendered).to include("Action")
    expect(rendered).to include("Adventure")
    expect(rendered).to include("Science Fiction")
  end

  it "displays posters?" do
    render
    expect(rendered).to include("1ilv6ryhuv6rt9zisbsejummbei")
    expect(rendered).to include("Bywwinjc8ceij32ebxjjwvhuzdi")
    expect(rendered).to include("1nwti2xwvjoe7hprd46k16jrema")
  end

  it "displays posters title?" do
    render
    expect(rendered).to include("Posters")
  end

  it "displays casts title?" do
    render
    expect(rendered).to include("Casts")
  end

  it "displays casts?" do
    render
    expect(rendered).to include("Idtxxjxmjgu7jyrjsvepnqblhv1")
    expect(rendered).to include("Gwyneth Paltrow")
    expect(rendered).to include("as Aldrich Killian")
  end

  it "displays similar movies title?" do
    render
    expect(rendered).to include("Similar Movies")
  end

  it "displays similar movies?" do
    render
    expect(rendered).to include("Ph4oeizah9a40tly4d0l6aab3ms")
    expect(rendered).to include("/movies/99861")
    expect(rendered).to include("org/t/p/w154/5QpaN7ZBAR6D3FotvEIMX0qZxHg.jpg")
  end

end