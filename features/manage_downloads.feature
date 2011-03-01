@downloads
Feature: Downloads
  In order to have downloads on my website
  As an administrator
  I want to manage downloads

  Background:
    Given I am a logged in refinery user
    And I have no downloads

  @downloads-list @list
  Scenario: Downloads List
   Given I have downloads titled UniqueTitleOne, UniqueTitleTwo
   When I go to the list of downloads
   Then I should see "UniqueTitleOne"
   And I should see "UniqueTitleTwo"

  @downloads-valid @valid
  Scenario: Create Valid Download
    When I go to the list of downloads
    And I follow "Add New Download"
    And I fill in "Title" with "This is a test of the first string field"
    And I press "Save"
    Then I should see "'This is a test of the first string field' was successfully added."
    And I should have 1 download

  @downloads-invalid @invalid
  Scenario: Create Invalid Download (without title)
    When I go to the list of downloads
    And I follow "Add New Download"
    And I press "Save"
    Then I should see "Title can't be blank"
    And I should have 0 downloads

  @downloads-edit @edit
  Scenario: Edit Existing Download
    Given I have downloads titled "A title"
    When I go to the list of downloads
    And I follow "Edit this download" within ".actions"
    Then I fill in "Title" with "A different title"
    And I press "Save"
    Then I should see "'A different title' was successfully updated."
    And I should be on the list of downloads
    And I should not see "A title"

  @downloads-duplicate @duplicate
  Scenario: Create Duplicate Download
    Given I only have downloads titled UniqueTitleOne, UniqueTitleTwo
    When I go to the list of downloads
    And I follow "Add New Download"
    And I fill in "Title" with "UniqueTitleTwo"
    And I press "Save"
    Then I should see "There were problems"
    And I should have 2 downloads

  @downloads-delete @delete
  Scenario: Delete Download
    Given I only have downloads titled UniqueTitleOne
    When I go to the list of downloads
    And I follow "Remove this download forever"
    Then I should see "'UniqueTitleOne' was successfully removed."
    And I should have 0 downloads
 