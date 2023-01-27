# location: spec/feature/integration_spec.rb
require 'rails_helper'

Rspec.describe 'Creating a task', type: feature do
  scenario 'valid inputs' do
    visit tasks_path
    fill_in 'task[name]', with: 'do the dishes'
    click_on 'Add new task'
    visit tasks_path
    expect(page).to have_content('do the dishes')
  end
end
    
