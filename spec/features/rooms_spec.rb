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

  scenario 'User can edit and update rooms in a house' do
    visit '/'
    click_on 'Add a room'
    fill_in 'Room type', with: 'bedroom'
    fill_in 'Usage', with: 'sleeping'
    click_on 'Create room'
    expect(page).to have_content 'bedroom'
    expect(page).to have_content 'sleeping'
    click_on 'bedroom'
    expect(page).to have_content 'bedroom'
    expect(page).to have_content 'sleeping'
    click_on 'Edit'
    fill_in 'Room type', with: 'kitchen'
    fill_in 'Usage', with: 'cooking'
    click_on 'Update'
    expect(page).to have_no_content 'bedroom'
    expect(page).to have_no_content 'sleeping'
    expect(page).to have_content 'kitchen'
    expect(page).to have_content 'cooking'
  end
end