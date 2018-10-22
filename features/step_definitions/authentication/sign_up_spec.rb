Given("I visit the home page") do
  FactoryBot.create(:story)
  visit new_user_registration_path
end

When("I fill in the sign up form") do
  fill_in 'user_email', with: 'test@example.com'
  fill_in 'user_password', with: 'testpass'
  fill_in 'user_password_confirmation', with: 'testpass'

  click_button 'Sign up'
end

Then("I should be logged in") do
  expect(page).to have_content('Welcome! You have signed up successfully.')
  sleep 1
end
