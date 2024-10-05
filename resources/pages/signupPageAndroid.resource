*** Settings ***
Resource    ../locators/signupLocatorsAndroid.resource
Library    AppiumLibrary

*** Keywords ***

Dado que estou na tela de cadastro
    Wait Until Page Contains Element      ${ANDROID_LOGIN_OPTION}
    Click Element    ${ANDROID_LOGIN_OPTION}
    Wait Until Page Contains Element    ${ANDROID_SIGN_UP_OPTION}
    Click Element    ${ANDROID_SIGN_UP_OPTION}

Quando preencho as credenciais validas
    [Arguments]    ${EMAIL_FIELD_ARG}    ${PASSWORD_FIELD_ARG}    ${REPEAT_PASSWORD_FIELD_ARG}
    Input Text    ${ANDROID_EMAIL_FIELD}     text=${EMAIL_FIELD_ARG}
    Input Text    ${ANDROID_PASSWORD_FIELD}    text=${PASSWORD_FIELD_ARG}
    Input Text    ${ANDROID_PASSWORD_REPEAT_FIELD}   text=${REPEAT_PASSWORD_FIELD_ARG}

E submeto o cadastro
    Wait Until Page Contains Element    ${ANDROID_SIGNUP_BTN} 
    Click Element    ${ANDROID_SIGNUP_BTN} 

Entao devo ver a mensagem de cadastro realizado com sucesso
    [Arguments]    ${EXPECTED}
    Wait Until Page Contains Element    ${ANDROID_OK_BTN} 
    Element Text Should Be    ${ANDROID_SUCCESS_TXT}   ${EXPECTED}
    Click Element   ${ANDROID_OK_BTN} 