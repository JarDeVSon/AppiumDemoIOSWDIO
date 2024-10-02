*** Variables ***

${LOGIN_OPTION}    accessibility_id=Login
${SIGN_UP_OPTION}    chain=**/XCUIElementTypeStaticText[`name == "Sign up"`]
${EMAIL_FIELD}    accessibility_id=input-email
${PASSWORD_FIELD}    accessibility_id=input-password
${REPEAT_PASSWORD_FIELD}    accessibility_id=input-repeat-password
${SIGNUP_BTN}    xpath=//XCUIElementTypeStaticText[@name="SIGN UP"]
${SUCCESS_TXT}    xpath=//XCUIElementTypeStaticText[@name="You successfully signed up!"]
${OK_BTN}    accessibility_id=OK