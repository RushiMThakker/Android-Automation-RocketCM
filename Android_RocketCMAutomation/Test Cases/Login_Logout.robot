#Author: DHAIRYA DESAI
#CODE VERSION: 1.0.0
#process: Login

*** Settings ***
Library  OperatingSystem
Library  AppiumLibrary
Library  Process
Library  Collections
Library  Reserved
Library  DateTime
Library  String
Resource    Variables.robot
Resource    Keywords.robot

# Resource  Keywords/CustomizedKeywords.robot
Suite Setup  Open Application  http://localhost:4723/wd/hub
            ...  platformName=Android
            ...  deviceName=device    #y2
            ...  udid=4b7358ab
            ...  appPackage=com.rocketcm
            ...  appActivity=com.rocketcm.ui.activity.SplashActivity
            ...  relaxed-security=true
Suite Teardown  Close Application

*** Test Cases ***
Login with Right Credentials
    
   Wait For Login Page
   Login with Valid Credentials
   
    
