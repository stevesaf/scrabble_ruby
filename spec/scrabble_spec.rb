require('rspec')
  require('scrabble')

describe('String#scrabble') do
  it("returns a scrabble score for a letter") do
      expect("a".scrabble()).to(eq(1))
  end
  it("returns a scrabble score for a letter") do
    expect("x".scrabble()).to(eq(8))
  end

end

require('capybara/rspec')
  require('./app')
  Capybara.app = Sinatra::Application
  set(:show_exceptions, false)

  describe('the scrabble case path', {:type => :feature}) do
    it('process the user entry and return a score') do
      visit('/')
      fill_in('scrabble', :with => 'axel')
      click_button('Send')
      expect(page).to have_content(20)
    end
  end
