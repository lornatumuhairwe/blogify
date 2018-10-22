@leave_the_window_open
@javascript

Feature: Authentication
  In order to use the website
  As a user
  I should be able to sign up, login and logout

Scenario: Signing up
  Given I visit the home page
  When I fill in the sign up form
  Then I should be logged in
