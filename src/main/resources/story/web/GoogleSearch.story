Description: Simple story to test google search is working;

Scenario: Open google search main page
Given I am on the main application page
Then the page title is equal to 'Google'

Scenario: Search validation
When I enter `Vividus Framework` in field located `By.elementName(q)`
<<<<<<< HEAD
When I click on element located `By.xpath((//*[@class="gNO89b"])[1])`
When I click on element located `By.xpath((//*[@class="LC20lb DKV0Md"])[1])`
Then the page has the relative URL '/vividus-framework/vividus'
=======
When I click on a button with the name 'btnK'
Then a link by By.linkUrl(https://github.com/vividus-framework) exists
>>>>>>> c713d21ed721c705e0cbec088dcf91dddab617c8
