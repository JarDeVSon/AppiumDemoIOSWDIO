*** Settings ***
Resource    ../locators/signupLocators.resource
Library    AppiumLibrary

*** Keywords ***

Dado que estou na tela de cadastro
    Click Element    ${LOGIN_OPTION}
    Click Element    ${SIGN_UP_OPTION}

Quando preencho as credenciais validas
    [Arguments]    ${EMAIL_FIELD_ARG}    ${PASSWORD_FIELD_ARG}    ${REPEAT_PASSWORD_FIELD_ARG}
    Input Text    ${EMAIL_FIELD}    text=${EMAIL_FIELD_ARG}
    Input Text    ${PASSWORD_FIELD}    text=${PASSWORD_FIELD_ARG}
    Input Text    ${REPEAT_PASSWORD_FIELD}    text=${REPEAT_PASSWORD_FIELD_ARG}

E submeto o cadastro
    Wait Until Page Contains Element    ${SIGNUP_BTN}
    Click Element    ${SIGNUP_BTN}

Entao devo ver a mensagem de cadastro realizado com sucesso
    # [Arguments]    ${EXPECTED}
    Sleep    10s
    Wait Until Page Contains Element    ${OK_BTN}
    # Element Text Should Be    ${SUCCESS_TXT}    ${EXPECTED}
    Click Element    ${OK_BTN}