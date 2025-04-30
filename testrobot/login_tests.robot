*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/login_keyword.robot

Suite Setup       Truy Cập Trang Đăng Nhập
Suite Teardown    Đóng Trình Duyệt

*** Test Cases ***
Đăng Nhập Hợp Lệ
    Nhập Thông Tin Đăng Nhập    Admin    admin123
    Wait Until Element Is Visible    //h6[text()="Dashboard"]    10s

Đăng Nhập Sai Mật Khẩu
    Truy Cập Trang Đăng Nhập
    Nhập Thông Tin Đăng Nhập    Admin    wrongpass
    Wait Until Page Contains    Invalid credentials    10s
