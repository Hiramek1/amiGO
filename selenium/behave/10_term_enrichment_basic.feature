
Feature: Term enrichment engines basically respond
 Upstream and embedded term enrichment enghines behave as expected.
 
 ## No Background necessary.

 @go-data
 Scenario: user is forwarded to PANTHER when using RTE
    Given I go to page "/rte"
     and I input the following text into the RTE input box
      """
      P31946   ,P62258
      Q04917,P61981
      P31947  baxter
      P27348,
      P63104 ,  Q96QU6
      Q8NCW5 ,
      """
     when I submit the RTE form
     then the title should be "PANTHER - Compare lists to reference list"
