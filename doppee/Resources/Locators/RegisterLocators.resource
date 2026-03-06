*** Variables ***
# Locators
${LBL_CREATE_ACCOUNT}          css=h2:has-text('${Translate.${Language}.RegisterPage.CreateAccountLabel}')                     # ข้อความ Create Account
${LBL_USERNAME}                css=label:has-text('${Translate.${Language}.RegisterPage.UsernameLabel}')                       # ข้อความ Username
${FIELD_USERNAME}              css=input[placeholder='${Translate.${Language}.RegisterPage.UsernameFieldPlaceholder}']         # ช่องกรอกชื่อผู้ใช้
${LBL_MOBILE_PHONE}            css=label:has-text('${Translate.${Language}.RegisterPage.MobilePhoneLabel}')                    # ข้อความ Mobile Phone
${FIELD_MOBILE_PHONE}          css=label:has-text('${Translate.${Language}.RegisterPage.MobilePhoneLabel}') + input            # ช่องกรอกเบอร์โทรศัพท์
${LBL_EMAIL}                   css=label:has-text('${Translate.${Language}.RegisterPage.EmailLabel}')                          # ข้อความ Email
${FIELD_EMAIL}                 css=label:has-text('${Translate.${Language}.RegisterPage.EmailLabel}') + input                  # ช่องกรอกอีเมล
${LBL_PASSWORD}                css=label[data-signup="signup-form0-label9"]
# ${LBL_PASSWORD}                css=label:has-text('${Translate.${Language}.RegisterPage.PasswordLabel}')                       # ข้อความ Password
${FIELD_PASSWORD}              css=label:has-text('${Translate.${Language}.RegisterPage.PasswordLabel}') + div input[data-testid='signup-password']             # ช่องกรอกรหัสผ่าน
${ICON_SHOW_PASSWORD}          css=label:has-text('${Translate.${Language}.RegisterPage.PasswordLabel}') + div button[aria-label='Show password']               # ไอคอนแสดงรหัสผ่าน
${LBL_CONFIRM_PASSWORD}        css=label:has-text('${Translate.${Language}.RegisterPage.ConfirmPasswordLabel}')                # ข้อความ Confirm Password
${FIELD_CONFIRM_PASSWORD}      css=label:has-text('${Translate.${Language}.RegisterPage.ConfirmPasswordLabel}') + div input[data-testid='signup-confirm']   # ช่องกรอกยืนยันรหัสผ่าน
${ICON_SHOW_CONFIRM_PASSWORD}  css=label:has-text('${Translate.${Language}.RegisterPage.ConfirmPasswordLabel}') + div button[aria-label='Show password']    # ไอคอนแสดงรหัสผ่านยืนยัน
${BTN_CREATE_ACCOUNT}          css=button:has-text('${Translate.${Language}.RegisterPage.CreateAccountButton}')                # ปุ่มสร้างบัญชี
${BTN_SIGN_IN}                 css=button:has-text('${Translate.${Language}.RegisterPage.SignInLabel}')                        # ปุ่มเข้าสู่ระบบ
