*** Variables ***
${password}   123456789
${model-card-title}   //*[@id="model-card-title"]/a
${models-button-navbar}   //*[@id="models-button-navbar"]/div
${hamburger-menu-button}   //*[@id="hamburger-menu-button"]/div/i
${new-model-button}   //*[@id="new-model-button"]/div
${sharing-button-model-card}   //*[@id="sharing-button-model-card"]/div[2]/i
${model-three-dots-settings-button}   //*[@id="app"]/div[7]/div[1]/main/div/div/div[3]/div/div/div/div/div/nav/div/div[3]/div/button/div/i
${add-to-workspace-button}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[2]/div/div[2]/div/div/div/div[2]/button/div
${from-scratch-continue-button}   //*[@id="app"]/div[2]/div/div/div[2]/div/div[1]/div/div/div[2]/button/div
${housing-continue-button}   //*[@id="continue-dataset-card"]/div
${customer-support-continue-button}   //*[@id="continue-dataset-card"]/div


*** Settings ***
Resource  ./Sprint_1/mainResource.robot
Resource  ./Sprint_1/deleteModelResources.robot
Resource  ./Sprint_1/createModelResource.robot
Resource  ./Sprint_2/confirmDisabledResource.robot
Resource  ./Sprint_2/confirmSetupResource.robot
Resource  ./Sprint_2/createLabelResource.robot
Resource  ./Sprint_2/labelsShownResource.robot
Resource  ./Sprint_2/select_column_resources.robot

Resource  ./Sprint_3/connectAdditionalDatasetResource.robot



Resource  ./Sprint_3/AG-95_resource.robot

Resource  ./Sprint_3/AG-52-Resource.robot
Library  ../Scripts/remove_text.py
Library  ../Scripts/remove_comma.py
Library  ../Scripts/remove_total_items_text.py

