*** Variables ***
${new_model_button2}   //*[@id="app"]/div[6]/div[1]/main/div/div/div[1]/nav/div[1]/a/div
${continue_button2}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[1]/div/div/div[2]/button
${dataset_continue_button2}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[2]/div/div[3]/div/div[2]/div/div/div[2]/button
${slide_button2}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[3]/div/div/nav/div/div[3]/div[2]/div[1]/div/input
${e-mail2}  ann.christine.phan@iths.se
${password}  123456789

*** Keywords ***
Verify Correct Workspace
    Go To  https://app.labelf.ai/main/376/models/view


Press Existing Model
    Click Element  ${new_model_button2}
    #Testa Göra utan Sleep
    Click Button  ${continue_button2}
    Click Button  ${dataset_continue_button2}
    Click Element  ${slide_button2}

Verify Setup
    Wait Until Page Contains   Select the column which contains the labels

Confirm Setup
    Verify Correct Workspace
    Press Existing Model
    Verify Setup
