# This sample code supports Appium Robot client >=2
# pip install robotframework-appiumlibrary
# Then you can paste this into a file and simply run with Robot
#
# Find keywords at: http://serhatbolsu.github.io/robotframework-appiumlibrary/AppiumLibrary.html
#
# If your tests fails saying 'did not match any elements' consider using 'wait activity' or
# 'wait until page contains element' before a click command

*** Settings ***
Library    AppiumLibrary
    ...    timeout=120    
    ...    run_on_failure=Capture Page Screenshot    
    ...    sleep_between_wait_loop=0.2
Test Setup        Open Application    
    ...    http://127.0.0.1:4723    
    ...    appium:automationName=UiAutomator2    
    ...    appium:platformName=Android    
    ...    appium:platformVersion=15    
    ...    appium:deviceName=emulator-5554    
    ...    appium:app=/Users/admin/Projects/AppiumDemoIOSWDIO/resources/app/android.wdio.native.app.v1.0.8.apk    
    ...    appium:newCommandTimeout=${3600}    
    ...    appium:connectHardwareKeyboard=${True}
Test Teardown     Close All Applications
Resource    ../resources/pages/signupPageAndroid.resource



*** Test Cases ***
Test Appium Recorder Android 

    ${el1} =    Set Variable     xpath=//*[@text="Login"]
    Wait Until Page Contains Element    ${el1}
    Click Element    ${el1}
    ${el2} =    Set Variable     xpath=//*[@text="Sign up"]
    Wait Until Page Contains Element    ${el2}
    Click Element    ${el2}
    ${el3} =    Set Variable     accessibility_id=input-email
    Input Text    ${el3}    emailtesteandroid@bol.com
    ${el4} =    Set Variable     accessibility_id=input-password
    Input Text    ${el4}    teste@123
    ${el5} =    Set Variable     accessibility_id=input-repeat-password
    Input Text    ${el5}    teste@123
    ${el6} =    Set Variable     xpath=//*[@text="Sign up"]
    Wait Until Page Contains Element    ${el6}
    Click Element    ${el6}


Test refatorado com page objects
    Dado que estou na tela de cadastro
    Quando preencho as credenciais validas     email1teste123@bol.com    teste123    teste123
    E submeto o cadastro
    # Entao devo ver a mensagem de cadastro realizado com sucesso    #You successfully signed up!
