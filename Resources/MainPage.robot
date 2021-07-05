*** settings ***
Library    SeleniumLibrary
Resource    ./Configuration.robot


*** variables ***
${ADD TO CARD BUTTON}    css=[onclick="cart.add('40');"]
${CARD VALUE}    css=#cart-total
${SEARCH FILD}    css=[name="search"]
${SEARCH BUTTON}    css=.btn.btn-default.btn-lg
${PRODUCT THOMB}    css=div.product-thumb
${PRODUCT TITLE}    css=div.product-thumb > div > div.caption > h4 > a
${USER DROPDOWN}    css=ul.list-inline > li.dropdown
${REGISTRATION BUTTON}    css=[href="${URL}/index.php?route=account/register"]
${LOGIN BUTTON}    css=[href="${URL}/index.php?route=account/login"]


*** keywords ***
Check Store Title
    ${ACTUAL TITLE}    Get Title
    Should Contain      ${ACTUAL TITLE}    ${TITLE}


Add Item To Card
    click button    ${ADD TO CARD BUTTON}


Check Added Item In Cart
    wait until element is visible    ${CARD VALUE}     ${TIMEOUT}
    wait until element contains    ${CARD VALUE}    1 item(s)    ${TIMEOUT}


Search Item
    input text    ${SEARCH FILD}   ${ITEM}
    click button    ${SEARCH BUTTON}


Is Item Founded
    wait until element is visible    ${PRODUCT THOMB}    ${TIMEOUT}
    ${product name}   get text    ${PRODUCT TITLE}
    Should Contain    ${product name}   ${ITEM}


Click To Registration Button
    click element    ${USER DROPDOWN}
    wait until element is visible    ${REGISTRATION BUTTON}    ${TIMEOUT}
    click element    ${REGISTRATION BUTTON}


Click To Login Button
    click element    ${USER DROPDOWN}
    wait until element is visible    ${LOGIN BUTTON}    ${TIMEOUT}
    click element    ${LOGIN BUTTON}
