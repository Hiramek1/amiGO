Feature: AmiGO search pages show counts consistent with data loads

 ## No Background necessary.

 Scenario Outline: the search pages on the production server show counts consistent with data loads
   Given I go to search page "<searchpage>"
    then the total should be within 10% of recent count "<count>"
   Examples: search pages
    | searchpage               | count                    |
#   |--------------------------+--------------------------|
    | /amigo/search/annotation | 5371204                  |
    | /amigo/search/ontology   | 90579                    |
    | /amigo/search/bioentity  | 929776                   |
##