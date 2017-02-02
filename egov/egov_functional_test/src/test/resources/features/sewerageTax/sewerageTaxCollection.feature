Feature: Create/renewal/closure of sewerage connection
  As a registered user of the system
  User should be able to create/change/closure of sewerage connection

  Background:It will run the data entry screen of property tax

    Given commissioner logs in
    When he chooses to create data entry
    And he creates a new assessment for a private residential property
    Then dataEntry Details saved successfully
    And he choose to add edit DCB
    And he choose to close the dataentry acknowledgement screen
    And current user logs out

@sewerage @WIP

  Scenario: create/change/closure of sewerage connection

      Given creator logs in
      And he chooses to create new sewage connection
      And he create new sewerage connection for above assessment number
      And he forward to assistant engineer and closes the acknowledgement
      Then user will be notified by "forwarded"

      And he chooses to collect sewerage tax for above application number
      And he search for above application number to collect
      And he collect the charges and closes the acknowledgement
      And current user logs out

      When assistantEngineer logs in
      And he chooses to act upon above sewerage connection
      And he forward to DEE and close the acknowledgement
      Then user will be notified by "forwarded"
      And current user logs out

      When DeputyExecutiveEngineer_1 logs in
      And he chooses to act upon above sewerage connection
      And he approve the above sewerage application
      And he closes the sewerage acknowledgement
      Then user will be notified by "successfully"
      And current user logs out

      When creator logs in
      And he chooses to act upon above sewerage connection
      And he generates estimation notice for above sewerage application

      And he chooses to collect sewerage tax for above application number
      And he search for above application number to collect
      And he collect the charges and closes the acknowledgement

      And he chooses to act upon above sewerage connection
      And he forward to executive engineer and closes the acknowledgement
      Then user will be notified by "forwarded"
      And current user logs out

      When Executive_engineer logs in
      And he chooses to act upon above sewerage application
      And he approve the above sewerage application
      And he closes the sewerage acknowledgement
      Then user will be notified by "successfully"
      And current user logs out

      When creator logs in
      And he chooses to act upon above sewerage connection
      And he generate workOrder for above sewerage connection
      And he forward to assistant engineer and closes the acknowledgement
      Then user will be notified by "forwarded"
      And current user logs out

      When assistantEngineer logs in
      And he chooses to act upon above sewerage connection
      And he execute connection and closes the acknowledgement
      Then user will be notified by "completed"
      And current user logs out

     ########################################################
     #############  change of sewerage connection ###########
     #########################################################

     Given creator logs in
     And he chooses to search for above sewerage connection
     And he search for above sewerage connection
     And he increses the number of closets
     And he forward to assistant engineer for change in closets and closes the acknowledgement
     Then user will be notified by "forwarded"

     And he chooses to collect sewerage tax for above application number
     And he search for above application number to collect
     And he collect the charges and closes the acknowledgement
     And current user logs out

     When assistantEngineer logs in
     And he chooses to act upon above sewerage connection for change
     And he forward to DEE for change and close the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When DeputyExecutiveEngineer_1 logs in
     And he chooses to act upon above sewerage connection for change
     And he approve the above sewerage application
     And he closes the sewerageChange acknowledgement
     Then user will be notified by "successfully"
     And current user logs out

     When creator logs in
     And he chooses to act upon above sewerage connection for change
     And he generates estimation notice for above sewerage application

     And he chooses to collect sewerage tax for above application number
     And he search for above application number to collect
     And he collect the charges and closes the acknowledgement

     And he chooses to act upon above sewerage connection for change
     And he forward to executive engineer for change in closets and closes the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When Executive_engineer logs in
     And he chooses to act upon above sewerage application
     And he approve the above sewerage application
     And he closes the sewerageChange acknowledgement
     Then user will be notified by "successfully"
     And current user logs out

     When creator logs in
     And he chooses to act upon above sewerage connection for change
     And he generate workOrder for above sewerage connection
     And he forward to assistant engineer for change in closets and closes the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When assistantEngineer logs in
     And he chooses to act upon above sewerage connection for change
     And he execute connection for change and closes the acknowledgement
     Then user will be notified by "completed"
     And current user logs out

     #########################################################
     #############  closure of sewerage connection ###########
     #########################################################

     Given creator logs in
     And he chooses to search for above sewerage connection
     And he search for above sewerage application for closure
     And he put remarks and forward the application
     And he forwards for closure and closes the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When assistantEngineer logs in
     And he chooses to act upon above sewerage connection for closure
     And he forwards to DEE for closure and close the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When DeputyExecutiveEngineer_1 logs in
     And he chooses to act upon above sewerage connection for closure
     And he forwards to executive engineer for closure and close the acknowledgement
     Then user will be notified by "forwarded"
     And current user logs out

     When Executive_engineer logs in
     And he chooses to act upon above sewerage connection for closure
     And he approve the above sewerage application
     And he closes the seweargeClosure acknowledgement
     Then user will be notified by "successfully"
     And current user logs out

     When creator logs in
     And he chooses to act upon above sewerage connection for closure
     And he generates closure notice
     And current user logs out











