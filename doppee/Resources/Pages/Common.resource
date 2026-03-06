*** Settings ***
Resource    ${EXECDIR}/Resources/Import.resource

*** Keywords ***
Open Doppee Browser
    [Arguments]    ${headless}=${False}    ${pause_on_failure}=${False}
    Browser.Open Browser    url=${Url}    browser=${Browser}    headless=${headless}    pause_on_failure=${pause_on_failure}

Close Doppee Browser
    Browser.Close Browser

Wait Until Element Is Visible
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not visible after ${timeout}
    Browser.Wait For Elements State    selector=${selector}    state=visible    timeout=${timeout}    message=${message}

Wait Until Element Is Enabled
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not enabled after ${timeout}
    Browser.Wait For Elements State    selector=${selector}    state=enabled    timeout=${timeout}    message=${message}

Click Element When Element Is Enabled
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not enabled after ${timeout}
    Wait Until Element Is Enabled    ${selector}    ${timeout}    ${message}
    Browser.Click    selector=${selector}

Input Text When Element Is Enabled
    [Arguments]    ${selector}    ${text}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not enabled after ${timeout}
    Wait Until Element Is Enabled    ${selector}    ${timeout}    ${message}
    Browser.Fill Text    selector=${selector}    txt=${text}

Get Text When Element Is Visible
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not visible after ${timeout}
    Wait Until Element Is Visible    ${selector}    ${timeout}    ${message}
    ${text}    Browser.Get Text    selector=${selector}
    RETURN    ${text}

Scroll To Element When Element Is Visible
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not visible after ${timeout}
    Wait Until Element Is Visible    ${selector}    ${timeout}    ${message}
    Browser.Scroll To Element    selector=${selector}

Get Length Of Elements When Element Is Visible
    [Arguments]    ${selector}    ${timeout}=${Timeout.Short}    ${message}=Element '${selector}' is not visible after ${timeout}
    Wait Until Element Is Visible    ${selector}    ${timeout}    ${message}
    ${elements}    Browser.Get Element Count    selector=${selector}
    ${length}    Get Length    ${elements}
    RETURN    ${length}
