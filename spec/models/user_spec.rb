require 'spec_helper'
require 'capybara'
include Capybara::DSL

describe "Viewing the list of users" do
  it "shows the user" do
    visit "http://example.com/users"

    expect(page).to have_text("4 Users")
    expect(page).to have_text("User 1")
    expect(page).to have_text("User 2")
    expect(page).to have_text("User 3")
    expect(page).to have_text("User 4")
  end
end
