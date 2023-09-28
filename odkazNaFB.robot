*** Settings ***

Documentation  Testovanie prvkov webu maurit
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
testovanie odkazu na facebook
    Open Browser  https://maurit.sk/  Chrome
    Maximize Browser Window
    Click Element    //*[@id="top-of-the-page"]/div[2]/div/div/div[2]/ul/li[2]/a/i
    Sleep  3s
    Switch window  url=https://www.facebook.com/mauritsro
    Click Element    xpath://*[@id="facebook"]/body/div[2]/div[1]/div/div[2]/div/div/div/div[2]/div/div[2]/div[1]
    Sleep    3s
    Click Element  xpath:/html/body/div[1]/div/div[1]/div/div[5]/div/div/div[1]/div/div[2]/div/div/div/div[1]
    Page Should Contain    MAURIT, s.r.o.