*** Variables ***
${slide_button2}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[3]/div/div/nav/div/div[3]/div[2]/div[1]/div/div[1]
# ^ Knappen som heter "Train directly on labels from an existing column" är en slide-knapp
${e-mail2}  ann.christine.phan@iths.se
${password}  123456789

*** Keywords ***

Press Existing Model
    Press Create New Model
    Press Continue To Model Creation
    Press Dataset Button  #Det är housing question dataset continue-knappen
    Wait Until Element Is Visible  ${slide_button2}
    Click Element  ${slide_button2}

Verify Setup
    Wait Until Page Contains   Select the column which contains the labels   4
    #Både den texten som kom fram efter man tryckt slide-knappen och verifiering att det blir ett till steg som nr4

Confirm Setup
    Press Existing Model
    Verify Setup

