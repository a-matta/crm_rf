*** Settings ***
Library     SeleniumLibrary    timeout=0:00:10


*** Test Cases ***
Should Be Able To Add A New Customer
    [Tags]    smoke    1006    contacts
    Add A New Customer


*** Keywords ***
Add A New Customer
    Open Browser    https://automationplayground.com/crm/    Chrome
    Page Should Contain    text=Customers Are Priority One
    Click Link    id=SignIn
    Page Should Contain    text=Login
    SeleniumLibrary.Input Text    id=email-id    text=admin@robotframeworktutorial.com
    SeleniumLibrary.Input Password    id=password    password=password
    SeleniumLibrary.Click Button    id=submit-id
    Page Should Contain    text=Our Happy Customers
    Wait Until Element Is Visible    locator=new-customer
    SeleniumLibrary.Click Link    id=new-customer
    SeleniumLibrary.Input Text    id=EmailAddress    text=faker@faker.com
    SeleniumLibrary.Input Text    id=FirstName    text=NancyRedmon
    SeleniumLibrary.Input Text    id=LastName    text=Carla W
    SeleniumLibrary.Input Text    id=City    text=Phoenix
    SeleniumLibrary.Select From List By Value    id=StateOrRegion    TX
    SeleniumLibrary.Select Radio Button    gender    female
    SeleniumLibrary.Click Button    locator=Submit
    Close Browser
