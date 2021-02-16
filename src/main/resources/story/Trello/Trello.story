Trello story
		 
Scenario: Create ‘Sign Up’ scenario
Given I am on the main application page
When I click on element located `By.xpath((//*[@href="/signup"])[1])`
When I enter `<email>` in field located `By.xpath(//*[@id="email"])`
Examples:
|email|
|depac79482@edultry.com|
|bilwat@tempinbox.xyz|
|lisgaa@tempinbox.xyz|
When I click on element located `By.xpath(//*[@id="signup-submit"])`
When I enter `<name>` in field located `By.xpath(//*[@id="displayName"])`
When I enter `<password>` in field located `By.xpath(//*[@id="password"])`
Examples:
|name|password|
|#{generate(name '[a-z]{3}[A-Z]{2}')}|#{generate(pass '[a-z]{3}[A-Z]{2}[0-9]{2}')}|
|#{generate(name '[a-z]{3}[A-Z]{2}')}|#{generate(pass '[a-z]{3}[A-Z]{2}[0-9]{2}')}|
|#{generate(name '[a-z]{3}[A-Z]{2}')}|#{generate(pass '[a-z]{3}[A-Z]{2}[0-9]{2}')}|
When I click on element located `By.xpath(//*[@id="signup-submit"])`
Then the page title is equal to 'Boards | Trello'

Scenario: Use API for Trello Board creation
Given request body: {
"key": "#{generate(key '[0-9a-fA-F]{32}')}"
"token": "#{generate(token '[0-9a-fA-F]{64}')}"
"defaultLists": "true",
"iDorganiztion": " ",
"name": "<name>",
"prefs_permissionLevel": "org",
"prefs_selfJoin": "true"
}
When I issue a HTTP POST request for a resource with the URL 'https://api.trello.com/1/boards/'
Then the response code is equal to '200'



