*** Variables ***
${click_pre-existing_model}   //*[@id="app"]/div[7]/div[1]/main/div/div/div[3]/div/div/div/div/div/nav/div
${click_text_area2}   //*[@id="app"]/div[7]/div[1]/main/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div/div[1]/div/div[1]/div/textarea
${submit_knapp}   //*[@id="app"]/div[7]/div[1]/main/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div/div[2]/button[2]
${e-mail2}   ann.christine.phan@iths.se
${password}  123456789
${category_account}   //*[@id="app"]/div[7]/div[1]/main/div/div/div[2]/div/div[1]/div/div[2]/div/div[2]/div/div[3]/div[1]/nav/div[1]/div[1]

*** Keywords ***

Log In To Personal Workspace
    Login
    Go To  https://app.labelf.ai/main/376/models/view

Input New Label To Trained Model
    Click Element   ${click_pre-existing_model}
    Wait Until Element Is Visible  ${click_text_area2}
    Click Element   ${click_text_area2}
    Input Text   ${click_text_area2}   Forgot Password
    Click Button   ${submit_knapp}

Verify Added Label
    Wait Until Page Contains   95%
    ${verify_categorization}  Get Text   ${category_account}
    Should Be Equal As Strings  ${verify_categorization}   Account


