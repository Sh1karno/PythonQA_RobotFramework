*** settings ***
Resource    ./MainPage.robot


*** variables ***
${EMAIL FILD}    css=[name="email"]
${PASSWORD FILD}    css=[name="password"]
${SUBMITE BUTTON}    css=[type="submit"]
${ACCOUNT URL}    http://localhost/index.php?route=account/account


*** keywords ***
Fill Login Form
    clear element text    ${EMAIL FILD}
    input text    ${EMAIL FILD}    ${EMAIL}
    clear element text    ${PASSWORD FILD}
    input text    ${PASSWORD FILD}    ${PASSWORD}


Login User
    Fill Login Form
    click button    ${SUBMITE BUTTON}
    wait until location is    ${ACCOUNT URL}
    page should contain    My Account
