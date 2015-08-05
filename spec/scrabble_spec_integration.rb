require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set (:show_expections, false)

describe('the scrabble path', {:type => :feature}) do
  it('processes user entry and returns scrabble score') do
    visit('/')
    fill_in("scrabble_word" :with "A")
    click_button('Enter')
    expect(page).to have_content(1)
  end
end
