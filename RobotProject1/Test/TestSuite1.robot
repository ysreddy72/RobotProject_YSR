*** Settings ***
Library    SeleniumLibrary    

Suite Setup        Log    Iam inside Test suite Setup
Suite Teardown     Log    Iam inside Test suite Teardown
Test Setup         Log    Iam inside Test Setup
Test Teardown      Log    Iam inside Test Teardown 

Default Tags       Sanity Test                

*** Test Cases ***

MyFirstTest
    [Tags]    Smoke Test
    Log       Hello World...

MySecondTest
    Log            Iam in 2nd Test
    Set Tags       Regression1
    Remove Tags    Regression1
    
MyThirdTest
    Log    Iam in 3rd Test
    
    
# FirstSeleniumTest
    # Open Browser    https://google.com    chrome   
    # Set Browser Implicit Wait    5
    # Input Text        name=q    Automation step by step
    # Press Keys        name=q    ENTER 
    # #Click Button      name=btnK    
    # Sleep    2    
    # Close Browser 
    # Log    Test Completed    
  
  
# SampleLoginTest
    # [Documentation]        This is a simple login test
    # Open Browser                    ${URL}     chrome  
    # Set Browser Implicit Wait       5
    # LoginKW 
    # Click Element                   id=welcome
    # Click Element                   link=Logout
    # Close Browser
    # Log                             Test Completed 
    # Log                             This test was executed by %{username} on %{os}  
    
 
*** Variables ***
${URL}        https://opensource-demo.orangehrmlive.com/
@{CREDENTIALS}    Admin    admin123
&{LOGINDATA}      Username=Admin    Password=admin123  

*** Keywords ***

LoginKW
    Input Text    	                id=txtUsername    @{CREDENTIALS}[0]
    Input Password    	            id=txtPassword    &{LOGINDATA}[Password]
    Click Button                    id=btnLogin

     
      