*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_PAGE}    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER_TYPE}  Chrome

*** Keywords ***
Truy Cập Trang Đăng Nhập
    Open Browser    ${LOGIN_PAGE}    ${BROWSER_TYPE}
    Maximize Browser Window
    Wait Until Element Is Visible    //input[@name="username"]    15s

Nhập Thông Tin Đăng Nhập
    [Arguments]    ${tai_khoan}    ${mat_khau}
    Input Text    //input[@name="username"]    ${tai_khoan}
    Input Text    //input[@name="password"]    ${mat_khau}
    Click Button    //button[@type="submit"]

Đóng Trình Duyệt
    Close Browser
