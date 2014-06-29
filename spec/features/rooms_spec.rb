require 'spec_helper'

feature 'User can Crud rooms' do
  scenario 'User can create and view rooms in a house' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a room'
    fill_in 'Room type', with: 'bedroom'
    fill_in 'Usage', with: 'sleeping'
    click_on 'Create room'
    expect(page).to have_content 'bedroom'
    expect(page).to have_content 'sleeping'

  end
end