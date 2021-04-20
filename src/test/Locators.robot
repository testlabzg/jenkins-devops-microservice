*** Settings ***
Library    SeleniumLibrary

# Copy/paste the line below into Terminal to execute:
# pybot -d results tests/locators.robot

*** Variables ***


*** Test Cases ***
Shoul be able to search for product
    open browser    http://www.amazon.com    chrome
    sleep    3s
    input text    id=twotabsearchtextbox    Ferrari 458
    Sleep    3s
    click button    id=nav-search-submit-button
                    # css=
                    # xpath=
    click link      css=#search > div.s-desktop-width-max.s-opposite-dir > div > div.s-matching-dir.sg-col-16-of-20.sg-col.sg-col-8-of-12.sg-col-12-of-16 > div > span:nth-child(4) > div.s-main-slot.s-result-list.s-search-results.sg-row > div:nth-child(4) > div > span > div > div > div:nth-child(3) > h2 > a
                    # click image
    sleep    3s
    close browser
*** Keywords ***