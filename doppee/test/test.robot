*** Settings ***
Resource         ${EXECDIR}/Resources/Pages/Common.resource
Resource         ${EXECDIR}/Resources/Pages/RegisterPage.resource
Test Setup       Common.Open Doppee Browser
Test Teardown    Common.Close Doppee Browser


*** Test Cases ***
TC001 Register New User
    [Documentation]    Owner: Tawan Duangchit
    ...    |    ***| Description |***
    ...    |    Objective: ทดสอบการสมัครสมาชิกด้วยข้อมูลที่ถูกต้อง
    ...    |-------------------------------------------------------
    ...    |    ***| Steps |***
    ...    |    1. เปิดหน้า สมัครสมาชิก
    ...    |    2. ตรวจสอบว่ามีข้อความ "สมัครสมาชิก" ปรากฏอยู่ในหน้า
    ...    |    3. ตรวจสอบว่ามีช่องกรอกชื่อผู้ใช้ ปรากฏอยู่ในหน้า
    ...    |    4. ตรวจสอบว่ามีช่องกรอกเบอร์โทรศัพท์ ปรากฏอยู่ในหน้า
    ...    |    5. ตรวจสอบว่ามีช่องกรอกอีเมล ปรากฏอยู่ในหน้า
    ...    |    6. ตรวจสอบว่ามีช่องกรอกรหัสผ่าน ปรากฏอยู่ในหน้า
    ...    |    7. ตรวจสอบว่ามีช่องกรอกยืนยันรหัสผ่าน ปรากฏอยู่ในหน้า
    ...    |    8. ตรวจสอบว่ามีปุ่มสร้างบัญชี ปรากฏอยู่ในหน้า
    ...    |    9. ตรวจสอบว่ามีปุ่มเข้าสู่ระบบ ปรากฏอยู่ในหน้า
    ...    |    10. กรอกข้อมูลที่ถูกต้องในช่องกรอกต่างๆ
    ...    |    11. คลิกที่ปุ่มสร้างบัญชี
    ...    |    12. ตรวจสอบว่าการสมัครสมาชิกสำเร็จและผู้ใช้ถูกนำไปยังหน้าโปรไฟล์หรือหน้าอื่นที่เหมาะสม
    ...    |-------------------------------------------------------
    ...    |    ***| Expected Results |***
    ...    |    1. หน้า สมัครสมาชิก ถูกเปิดขึ้นมา
    ...    |    2. ข้อความ "สมัครสมาชิก" ปรากฏอยู่ในหน้า
    ...    |    3. ช่องกรอกชื่อผู้ใช้ ปรากฏอยู่ในหน้า
    ...    |    4. ช่องกรอกเบอร์โทรศัพท์ ปรากฏอยู่ในหน้า
    ...    |    5. ช่องกรอกอีเมล ปรากฏอยู่ในหน้า
    ...    |    6. ช่องกรอกรหัสผ่าน ปรากฏอยู่ในหน้า
    ...    |    7. ช่องกรอกยืนยันรหัสผ่าน ปรากฏอยู่ในหน้า
    ...    |    8. ปุ่มสร้างบัญชี ปรากฏอยู่ในหน้า
    ...    |    9. ปุ่มเข้าสู่ระบบ ปรากฏอยู่ในหน้า
    ...    |    10. ข้อมูลถูกกรอกลงในช่องกรอกต่างๆ อย่างถูกต้อง
    ...    |    11. ผู้ใช้คลิกที่ปุ่มสร้างบัญชี
    ...    |    12. การสมัครสมาชิกสำเร็จและผู้ใช้ถูกนำไปยังหน้าโปรไฟล์หรือหน้าอื่นที่เหมาะสม
    ...    ==>
    RegisterPage.Validate Create Account Title
    RegisterPage.Validate Section Username
    RegisterPage.Input Username            username=${TC001.Username}
    RegisterPage.Validate Section Mobile Phone
    RegisterPage.Input Mobile Phone        mobile_phone=${TC001.MobilePhone}
    RegisterPage.Validate Section Email
    RegisterPage.Input Email               email=${TC001.Email}
    # ${Length}    Common.Get Length Of Elements When Element Is Visible    selector=${LBL_PASSWORD}
    # Log To Console    Length of Password Label: ${Length}
    ${Text}    Common.Get Text When Element Is Visible    selector=${LBL_PASSWORD}
    Log To Console    Password Label Text: '${Text}'
    RegisterPage.Validate Section Password
    RegisterPage.Input Password            password=${TC001.Password}
    RegisterPage.Validate Section Confirm Password
    RegisterPage.Input Confirm Password    password=${TC001.Password}
    RegisterPage.Validate Create Account Button
    RegisterPage.Validate Sign In Button
    # Browser.Click                      selector=${BTN_CREATE_ACCOUNT}
