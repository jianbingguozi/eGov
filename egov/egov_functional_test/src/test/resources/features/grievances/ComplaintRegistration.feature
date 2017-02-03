Feature: Register Complaint

  As a citizen register complaint directly in website

  @Sanity
  Scenario Outline: Register a Complaint with Citizen Login

    Given citizen logs in
    When he choose to register complaint with his login
    And he choose to enter grievance details as <grievanceDetails>
    And citizen create grievance
    And he copies CRN and closes the acknowledgement
    And current user sign out

    When LightingSuperintendent logs in
    And choose to act upon the above CRN
    And he resolves the issue and mark status as completed
    And user will be notified by "successfully"
    And current user logs out


    Examples:
    |grievanceDetails|
    |grievanceDetails|

  @WIP
  Scenario Outline: Register Complaint anonymously

    Given user log on to the website
    When he choose to register a complaint
    And he choose to enter contact information as <contactDetails>
    And he choose to enter grievance details as <grievanceDetails>

    Examples:
      |contactDetails |grievanceDetails |
      |contactInfo    |grievanceDetails |



  @Sanity

  Scenario Outline:  Official Register Grievance


   Given LightingSuperintendent logs in
   When he choose to register complaint
   And he choose to enter contact information as <contactDetails>
   And he choose to enter grievance details as <grievanceDetails>
   And official create grievance
   And official copies CRN and closes the acknowledgement
   And current user logs out


    Examples:
      |contactDetails |grievanceDetails |
      |contactInfo    |grievanceDetails |


    
  @Sanity

  Scenario Outline: Official Register Grievance and forwards

    Given LightingSuperintendent logs in
    When he choose to register complaint
    And he choose to enter contact information as <contactDetails>
    And he choose to enter grievance details as <grievanceDetails>
    And official create grievance
    And official copies CRN and closes the acknowledgement
    And choose to act upon the above CRN in his own dratfs
    And he forwards for approver sanitaryInspector1
    And current user logs out

    When sanitaryInspector logs in
    And choose to act upon the above CRN
    And he marks the staus as processing
    And he forwards for approver LightingSuperintendent
    And current user logs out

    When LightingSuperintendent logs in
    And choose to act upon the above CRN
    And he resolves the issue and mark status as completed
    And user will be notified by "successfully"
    And current user logs out


    Examples:
      |contactDetails |grievanceDetails |
      |contactInfo    |grievanceDetails |


  @WIP
  Scenario Outline: Citizen register a complaint and official forwards it to next level

    Given citizen logs in
    When he choose to register complaint with his login
    And he choose to enter grievance details as <grievanceDetails>
    And citizen create grievance
    And he copies CRN and closes the acknowledgement
    And current user sign out

    When LightingSuperintendent logs in
    And choose to act upon the above CRN
    And he forwards for approver sanitaryInspector1
    And current user logs out

    When sanitaryInspector logs in
    And choose to act upon the above CRN
    And he marks the staus as processing
    And he forwards for approver LightingSuperintendent
    And current user logs out

    When LightingSuperintendent logs in
    And choose to act upon the above CRN
    And he resolves the issue and mark status as completed
    And user will be notified by "successfully"
    And current user logs out

    Examples:
      |grievanceDetails |
      |grievanceDetails |


   @WIP
   Scenario Outline: Citizen register a complaint and withdraw it

     Given citizen logs in
     When he choose to register complaint with his login
     And he choose to enter grievance details as <grievanceDetails>
     And citizen create grievance
     And he copies CRN and closes the acknowledgement
     And he search complaint in his Inbox
     And he WITHDRAWN the complaint
     And current user sign out



     Examples:
       |grievanceDetails|
       |grievanceDetails|


  @WIP
  Scenario Outline: Citizen register a complaint, officer resolves it and citizen reopens the complaint

    Given citizen logs in
    When he choose to register complaint with his login
    And he choose to enter grievance details as <grievanceDetails>
    And citizen create grievance
    And he copies CRN and closes the acknowledgement
    And current user sign out

    When LightingSuperintendent logs in
    And choose to act upon the above CRN
    And he resolves the issue and mark status as completed
    And user will be notified by "successfully"
    And current user logs out

    When citizen logs in
    And he search complaint in his Inbox
    And he REOPENED the complaint


    Examples:
      |grievanceDetails|
      |grievanceDetails|