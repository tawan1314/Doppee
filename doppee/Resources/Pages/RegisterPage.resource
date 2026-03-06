*** Settings ***
Resource    ${EXECDIR}/Resources/Pages/Common.resource
Resource    ${EXECDIR}/Resources/Locators/RegisterLocators.resource

*** Keywords ***
# ============
#  Validation
# ============
Validate Create Account Title
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Visible    selector=${LBL_CREATE_ACCOUNT}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบข้อความ "สมัครสมาชิก" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน

Validate Section Username
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Visible    selector=${LBL_USERNAME}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบข้อความ "ชื่อผู้ใช้" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${FIELD_USERNAME}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบช่องกรอกชื่อผู้ใช้ในหน้า สมัครสมาชิก หรือช่องกรอกยังไม่พร้อมใช้งาน

Validate Section Mobile Phone
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Visible    selector=${LBL_MOBILE_PHONE}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบข้อความ "เบอร์โทรศัพท์" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${FIELD_MOBILE_PHONE}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบช่องกรอกเบอร์โทรศัพท์ในหน้า สมัครสมาชิก หรือช่องกรอกยังไม่พร้อมใช้งาน

Validate Section Email
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Visible    selector=${LBL_EMAIL}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบข้อความ "อีเมล" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${FIELD_EMAIL}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบช่องกรอกอีเมลในหน้า สมัครสมาชิก หรือช่องกรอกยังไม่พร้อมใช้งาน

Validate Section Password
    [Arguments]    ${timeout}=${Timeout.Short}
    # Common.Wait Until Element Is Visible    selector=${LBL_PASSWORD}
    # ...                                     timeout=${timeout}
    # ...                                     message=ไม่พบข้อความ "รหัสผ่าน" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${FIELD_PASSWORD}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบช่องกรอกรหัสผ่านในหน้า สมัครสมาชิก หรือช่องกรอกยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${ICON_SHOW_PASSWORD}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบไอคอนแสดงรหัสผ่านในหน้า สมัครสมาชิก หรือไอคอนยังไม่พร้อมใช้งาน

Validate Section Confirm Password
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Visible    selector=${LBL_CONFIRM_PASSWORD}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบข้อความ "ยืนยันรหัสผ่าน" ในหน้า สมัครสมาชิก หรือข้อความยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${FIELD_CONFIRM_PASSWORD}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบช่องกรอกยืนยันรหัสผ่านในหน้า สมัครสมาชิก หรือช่องกรอกยังไม่พร้อมใช้งาน
    Common.Wait Until Element Is Enabled    selector=${ICON_SHOW_CONFIRM_PASSWORD}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบไอคอนแสดงรหัสผ่านยืนยันในหน้า สมัครสมาชิก หรือไอคอนยังไม่พร้อมใช้งาน

Validate Create Account Button
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Enabled    selector=${BTN_CREATE_ACCOUNT}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบปุ่มสร้างบัญชีในหน้า สมัครสมาชิก หรือปุ่มยังไม่พร้อมใช้งาน

Validate Sign In Button
    [Arguments]    ${timeout}=${Timeout.Short}
    Common.Wait Until Element Is Enabled    selector=${BTN_SIGN_IN}
    ...                                     timeout=${timeout}
    ...                                     message=ไม่พบปุ่มเข้าสู่ระบบในหน้า สมัครสมาชิก หรือปุ่มยังไม่พร้อมใช้งาน

# =========
#  Actions
# =========
Input Username
    [Arguments]    ${username}    ${timeout}=${Timeout.Short}
    Common.Input Text When Element Is Enabled    selector=${FIELD_USERNAME}
    ...                                          text=${username}
    ...                                          timeout=${timeout}
    ...                                          message=ไม่สามารถกรอกชื่อผู้ใช้ได้เนื่องจากช่องกรอกชื่อผู้ใช้ในหน้า สมัครสมาชิก ไม่พร้อมใช้งาน

Input Mobile Phone
    [Arguments]    ${mobile_phone}    ${timeout}=${Timeout.Short}
    Common.Input Text When Element Is Enabled    selector=${FIELD_MOBILE_PHONE}
    ...                                          text=${mobile_phone}
    ...                                          timeout=${timeout}
    ...                                          message=ไม่สามารถกรอกเบอร์โทรศัพท์ได้เนื่องจากช่องกรอกเบอร์โทรศัพท์ในหน้า สมัครสมาชิก ไม่พร้อมใช้งาน

Input Email
    [Arguments]    ${email}    ${timeout}=${Timeout.Short}
    Common.Input Text When Element Is Enabled    selector=${FIELD_EMAIL}
    ...                                          text=${email}
    ...                                          timeout=${timeout}
    ...                                          message=ไม่สามารถกรอกอีเมลได้เนื่องจากช่องกรอกอีเมลในหน้า สมัครสมาชิก ไม่พร้อมใช้งาน

Input Password
    [Arguments]    ${password}    ${timeout}=${Timeout.Short}
    Common.Input Text When Element Is Enabled    selector=${FIELD_PASSWORD}
    ...                                          text=${password}
    ...                                          timeout=${timeout}
    ...                                          message=ไม่สามารถกรอกรหัสผ่านได้เนื่องจากช่องกรอกรหัสผ่านในหน้า สมัครสมาชิก ไม่พร้อมใช้งาน

Input Confirm Password
    [Arguments]    ${password}    ${timeout}=${Timeout.Short}
    Common.Input Text When Element Is Enabled    selector=${FIELD_CONFIRM_PASSWORD}
    ...                                          text=${password}
    ...                                          timeout=${timeout}
    ...                                          message=ไม่สามารถกรอกยืนยันรหัสผ่านได้เนื่องจากช่องกรอกยืนยันรหัสผ่านในหน้า สมัครสมาชิก ไม่พร้อมใช้งาน
