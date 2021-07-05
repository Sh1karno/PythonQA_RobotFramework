*** settings ***
Resource    ./MainPage.robot


*** variables ***
${FIRST NAME FILD}    css=[name="firstname"]
${LAST NAME FILD}    css=[name="lastname"]
${EMAIL FILD}    css=[name="email"]
${TELEPHONE FILD}    css=[name="telephone"]
${PASSWORD FILD}    css=[name="password"]
${CONFIRM PASSWORD FILD}    css=[name="confirm"]
${SUBSCRIBE CHECKBOX}    css=[name="newsletter"]
${AGREE CHECKBOX}    css=[name="agree"]
${CONTINUE BUTTON}    css=[value="Continue"]
${EXPECTED URL}    http://localhost/index.php?route=account/success


*** keywords ***
Fill Registration Form
    clear element text    ${FIRST NAME FILD}
    input text    ${FIRST NAME FILD}    ${FIRST NAME}
    clear element text    ${LAST NAME FILD}
    input text    ${LAST NAME FILD}    ${LAST NAME}
    clear element text    ${EMAIL FILD}
    input text    ${EMAIL FILD}    ${EMAIL}
    clear element text    ${TELEPHONE FILD}
    input text    ${TELEPHONE FILD}    ${TELEPHONE}
    clear element text    ${PASSWORD FILD}
    input text    ${PASSWORD FILD}    ${PASSWORD}
    clear element text    ${CONFIRM PASSWORD FILD}
    input text    ${CONFIRM PASSWORD FILD}    ${PASSWORD}
    click element    ${SUBSCRIBE CHECKBOX}
    click element    ${AGREE CHECKBOX}


Register user
    Fill Registration Form
    click button    ${CONTINUE BUTTON}
    wait until location is    ${EXPECTED URL}
    page should contain    Your Account Has Been Created!
