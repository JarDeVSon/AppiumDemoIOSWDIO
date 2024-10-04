# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library           AppiumLibrary    
...    timeout=60    
...    run_on_failure=Capture Page Screenshot    
...    sleep_between_wait_loop=0.2
Test Setup        Open Application    
...    http://127.0.0.1:4723
...    platformName=ios    
...    appium:automationName=xcuitest    
...    appium:deviceName=iPhone    
...    appium:platformVersion=18.0    
...    appium:udid=${UDID}
...    appium:noReset=${False}    
...    appium:fullReset=${False}    
...    appium:printPageSourceOnFindFailure=${False}    
...    appium:bundleId=org.reactjs.native.example.wdiodemoapp    
...    appium:app=${CURDIR}${/}..${/}resources${/}app${/}wdiodemoapp.app   
...    appium:includeSafariInWebviews=${True} 
...    appium:wdaLaunchTimeout=${300000}
...    appium:newCommandTimeout=${3600}    
...    appium:connectHardwareKeyboard=${True}    
...    disableIdLocatorAutocompletion=${True}
Test Teardown     Close All Applications
Resource    ../resources/pages/signupPage.resource
*** Variables ***
${UDID}    5FBB2585-CE24-4954-ABE6-95B257451381

*** Test Cases ***
Test Recorder Appium 1
    ${el1} =    Set Variable     accessibility_id=Login
    Click Element    ${el1}
    ${el2} =    Set Variable     chain=**/XCUIElementTypeStaticText[`name == "Sign up"`]
    Click Element    ${el2}
    ${el1} =    Set Variable     accessibility_id=input-email
    Input Text    ${el1}    email1teste123@bol.com
    ${el2} =    Set Variable     accessibility_id=input-password
    Input Text    ${el2}    teste123
    ${el3} =    Set Variable     accessibility_id=input-repeat-password
    Input Text    ${el3}    teste123
    ${el4} =    Set Variable     xpath=//XCUIElementTypeStaticText[@name="SIGN UP"]
    Wait Until Page Contains Element  ${el4}
    Click Element    ${el4}




Test refatorado com page objects
    Dado que estou na tela de cadastro
    Quando preencho as credenciais validas     email1teste123@bol.com    teste123    teste123
    E submeto o cadastro
    # Entao devo ver a mensagem de cadastro realizado com sucesso    #You successfully signed up!