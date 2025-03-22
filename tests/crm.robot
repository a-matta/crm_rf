*** Settings ***
Library     SeleniumLibrary    timeout=0:00:10


*** Variables ***
@{MY_VARIABLE}          Hello There    How are you    Hey!Thankyou
${YOUR_VARIABLE1}       Scaler
${YOUR_VARIABLE2}       Celebration
${YOUR_VARIABLE3}       Celebration
@{URL_AND_BROWSER}      https://automationplayground.com/crm/    Chrome


*** Test Cases ***
Should Be Able To Add A New Customer
    [Tags]    smoke    1006    contacts
    Add A New Customer    @{URL_AND_BROWSER}

Checking List Variables
    List Variables

Checking Scalar Variables
    Scalar Variables



*** Keywords ***
Add A New Customer
    [Arguments]    @{URL_AND_BROWSER}
    Open Browser    @{URL_AND_BROWSER}
    Page Should Contain    text=Customers Are Priority One
    Click Link    id=SignIn
    Page Should Contain    text=Login

    # Login
    SeleniumLibrary.Input Text    id=email-id    text=admin@robotframeworktutorial.com
    SeleniumLibrary.Input Password    id=password    password=password
    SeleniumLibrary.Click Button    id=submit-id
    Page Should Contain    text=Our Happy Customers

    Add Customer
    Wait Until Element Is Visible    locator=new-customer
    SeleniumLibrary.Click Link    id=new-customer
    SeleniumLibrary.Input Text    id=EmailAddress    text=faker@faker.com
    SeleniumLibrary.Input Text    id=FirstName    text=NancyRedmon
    SeleniumLibrary.Input Text    id=LastName    text=Carla W
    SeleniumLibrary.Input Text    id=City    text=Phoenix
    SeleniumLibrary.Select From List By Value    id=StateOrRegion    TX
    SeleniumLibrary.Select Radio Button    gender    female
    SeleniumLibrary.Click Button    locator=Submit
    Wait Until Page Contains    text=Success! New customer added.

    # Logout
    SeleniumLibrary.Click Link    Sign Out
    Page Should Contain    text=Signed Out
    Close Browser

List Variables
    Log    ${MY_VARIABLE}[0]
    Log    ${MY_VARIABLE}[1]
    Log    ${MY_VARIABLE}[2]

Scalar Variables
    ${YOUR_VARIABLE1}    Set Variable    Inflation
    Log    ${YOUR_VARIABLE1}
