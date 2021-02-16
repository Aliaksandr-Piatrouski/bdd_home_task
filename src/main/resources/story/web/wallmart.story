Description: Create account on walmart;
				 
Scenario: Open google search main page
Given I am on the main application page
Then the page title is equal to 'Google'

Scenario: Open wallmart main page
When I enter `walmart home page` in field located `By.elementName(q)`
When I click on element located `By.xpath((//*[@class="gNO89b"])[1])`
When I click on element located `By.xpath(//*[contains(text(),'Walmart.com | Save Money. Live Better.')])`
Then the page with the URL 'https://www.walmart.com/' is loaded

Scenario: Create walmart account
When I click on element located `By.xpath(//*[@id="hf-account-flyout"])`
When I click on element located `By.xpath(//*[@id="vh-account-menu-root"]/div[2]/div/a[1]/div/span)`
When I click on element located `By.xpath(//*[@data-nav="/account/signup"])`
When I enter `Alex` in field located `By.xpath(//*[@id="first-name-su"])`
When I enter `Piatrouski` in field located `By.xpath(//*[@id="last-name-su"])`
When I enter `luswit@tempinbox.xyz` in field located `By.xpath(//*[@id="email-su"])`
When I enter `1234Qwer` in field located `By.xpath(//*[@id="password-su"])`
When I click on element located `By.xpath(//*[@id="sign-up-form"]/button[1])`
Then the page with the URL 'https://www.walmart.com/?action=Create&rm=true' is loaded

Scenario: Perform search for product by search box 
When I enter `apple watch` in field located `By.xpath(//*[@id="global-search-input"])`
Then the page has the relative URL '/apple-watches'

Scenario: Open product page for product from previous step  
When I click on element located `By.xpath(//*[@id="searchProductResult"]//li[1])`
Then the page has the relative URL '/ip/Apple-Watch-Series'

Scenario: Add product to cart  
When I click on element located `By.xpath(//*[@class="prod-product-cta-add-to-cart display-inline-block"])`
Then the text 'You just added 1 item (1 item in cart)' exists

Scenario: Navigate to cart
When I click on element located `By.xpath((//*[@class="cart-pos-view-cart"])[1])`
Then the text 'Your cart: 1 item' exists




