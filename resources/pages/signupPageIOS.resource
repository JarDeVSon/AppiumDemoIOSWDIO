*** Settings ***
Resource    ../locators/signupLocatorsIOS.resource
Library    AppiumLibrary

*** Keywords ***

Dado que estou na tela de cadastro
    Wait Until Page Contains Element      ${IOS_LOGIN_OPTION}
    Click Element    ${IOS_LOGIN_OPTION}
    Wait Until Page Contains Element    ${IOS_SIGN_UP_OPTION}
    Click Element    ${IOS_SIGN_UP_OPTION}

Quando preencho as credenciais validas
    [Arguments]    ${EMAIL_FIELD_ARG}    ${PASSWORD_FIELD_ARG}    ${REPEAT_PASSWORD_FIELD_ARG}
    Input Text    ${IOS_EMAIL_FIELD}     text=${EMAIL_FIELD_ARG}
    Input Text    ${IOS_PASSWORD_FIELD}    text=${PASSWORD_FIELD_ARG}
    Input Text    ${IOS_REPEAT_PASSWORD_FIELD}    text=${REPEAT_PASSWORD_FIELD_ARG}

E submeto o cadastro
    Wait Until Page Contains Element    ${IOS_SIGNUP_BTN} 
    Click Element   ${IOS_SIGNUP_BTN} 

Entao devo ver a mensagem de cadastro realizado com sucesso
    # [Arguments]    ${EXPECTED}
    Wait Until Page Contains Element   ${IOS_OK_BTN} 
    # Element Text Should Be    ${IOS_SUCCESS_TXT}    ${EXPECTED}
    Click Element   ${IOS_OK_BTN}