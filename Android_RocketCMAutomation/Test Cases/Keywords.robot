#Author: DHAIRYA DESAI
#CODE VERSION: 1.0.0

*** Settings ***
Library  OperatingSystem
Library  AppiumLibrary
Library  Process
Library  Collections
Library  Reserved
Library  DateTime
Library  String
Resource    Variables.robot


*** Keywords ***
Wait For Login Page    
    
    Wait Until Page Contains                  ${EmailField}
      
Login with Valid Credentials
    
    Click Element                             ${EmailField}
    Input Text                                ${EmailField}          ${LoginEmail}
    Hide Keyboard    
    Click Element                             ${PasswordField}
    Input Text                                ${PasswordField}       ${LoginPassword}
    Hide Keyboard   
    Click Element                             ${LoginButton}
    Sleep                                     5s
    
