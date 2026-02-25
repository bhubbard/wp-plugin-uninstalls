#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pelecard_pay_Buttons_termNo'
wp option delete 'pelecard_pay_Buttons_username'
wp option delete 'pelecard_pay_Buttons_password'
wp option delete 'pelecard_pay_Buttons_max_Payments'
wp option delete 'pelecard_pay_Buttons_logo'
wp option delete 'pelecard_pay_Buttons_smallLogo'
wp option delete 'pelecard_pay_Buttons_hidePciDssLogo'
wp option delete 'pelecard_pay_Buttons_hidePelecardLogo'
wp option delete 'pelecard_pay_Buttons_css'
wp option delete 'pelecard_pay_Buttons_success_url'
wp option delete 'pelecard_pay_Buttons_error_url'
wp option delete 'pelecard_pay_Buttons_currency'
wp option delete 'pelecard_pay_Buttons_Background'
wp option delete 'pelecard_pay_Buttons_backgroundImage'
wp option delete 'pelecard_pay_Buttons_topMargin'

