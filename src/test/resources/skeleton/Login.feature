Feature: Validations on TestMeApp
@Smoke
Scenario Outline: TestMeApp registration
Given Application is launched
Then user clicks on SignUp button
Then user provides all fields "<UserName>" "<FirstName>" "<LastName>" "<Password>" "<ConfirmPassword>" "<Email>" "<MobileNo>" "<DOB>" "<Address>" "<Answer>"
And user clicks on Register button

Examples:
         |UserName|FirstName|LastName|Password|ConfirmPassword|Email|MobileNo|DOB|Address|Answer|
        |Vikas|Sudha|Vikas|Vikas12|Vikas12|sudhavikas@gmail.com|9603431281|04/17/1993|1-3-7,hemanagar|black|
         |Shravani|Pampari|Srinu12|Srinu12|Srinu1|shravani@gmail.com|7895637876|05/16/1999|7-345-3,Alwal|Red|
         |Veda|Mamidala|Kumar|Veda12|Veda12|veda@gmail.com|7416290059|06/16/1997|6-2-3,chikadpally|orange|
@Sanity       
Scenario Outline: Login validations by registered User
Given User has launched the application
Then User enters the valid credentials "<UserName>" "<Password>"
And User clicks on submit button
Then User verifies the login status

Examples:
  |UserName|Password|
    |Lalitha|Password123|
   
     
 @Sanity 
 Scenario: Purchase a product
 When user search on a serach tab
 Then user enter a product name
 And user selects product from dropdown
 Then user adds the product to cart
 And user does the payment
 @Sanity
 Scenario: User moves to cart without adding any items to it
 Given Launch the application
 When user clicks the login
 Then user enters credentials
 And clicks on login
 Then search a particular product
 And proceed to pay without adding any item to cart
 Then application does not display the cart icon
 
    


    
