#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

Feature: Run REST API test using JMeter Java API

  Scenario: To run performance test REST API with JMeter Java API.
    Given user supply the following values for ThreadGroup
      | NoOfThreads | RampupTime | LoopController | AcceptType             |ContentType|
      | 10           | 5          | 2             | header.acceptType_json |header.Content-Type_json|
    When user supply request type "GET" and path "https://gorest.co.in/public-api/users/37	"
    Then Initialize "Simple HTTP Test" Test Plan and performance test executed store the results "BDD_Performance_Report"      