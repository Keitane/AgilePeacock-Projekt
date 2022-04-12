*** Variables ***
${add_model_button}   //*[@id="app"]/div[6]/div[1]/main/div/div/div[1]/nav/div[1]/a/div
${continue_button}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[1]/div/div/div[2]/button/div
${accept_cookies}  //*[@id="diffuse-cookie-notice"]/div/div/div/div[2]/button[3]
${login_button}  //*[@id="app"]/div/main/div/div/div/div/div/div[2]/button[2]
${dataset_continue_button}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div/div/div/div/div[2]/button/div
${slide_button}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[3]/div/div/nav/div/div[3]/div[2]/div[1]/div/input
${e-mail}  ann.christine.phan@iths.se
${password}  123456789

*** Keywords ***
Verify Correct Workspace
    Go To  https://app.labelf.ai/main/376/models/view

Press Existing Model
    Click Element ${add_model_button}
    Click Button ${continue_button}
    Click Button ${dataset_continue_button}
    Click Element ${slide_button}

Verify Setup
    Wait Until Page Contains   Select the column which contains the labels

Confirm Setup
    Verify Correct Workspace
    Press Existing Model
    Verify Setup
