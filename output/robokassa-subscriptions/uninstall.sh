#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'robokassa_out_currency'
wp option delete 'robokassa_country_code'
wp option delete 'robokassa_culture'
wp option delete 'robokassa_payment_wc_robokassa_enabled'
wp option delete 'robokassa_iframe'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'RobokassaOrderPageTitle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'RobokassaOrderPageDescription_%'"
wp option delete 'robokassa_payment_MerchantLogin'
wp option delete 'robokassa_payment_test_onoff'
wp option delete 'robokassa_payment_testshoppass1'
wp option delete 'robokassa_payment_testshoppass2'
wp option delete 'robokassa_payment_shoppass1'
wp option delete 'robokassa_payment_shoppass2'
wp option delete 'robokassa_payment_sno'
wp option delete 'robokassa_payment_tax'
wp option delete 'RobokassaOrderPageDescription'
wp option delete 'robokassa_payment_paytype'
wp option delete 'RobokassaOrderPageTitle_all'
wp option delete 'RobokassaOrderPageDescription_all'
wp option delete 'robokassa_agreement_text'
wp option delete 'robokassa_agreement_pd_link'
wp option delete 'robokassa_agreement_oferta_link'
wp option delete 'robokassa_payment_SuccessURL'
wp option delete 'robokassa_payment_FailURL'
wp option delete 'robokassa_payment_sms_translit'
wp option delete 'robokassa_payment_sms1_enabled'
wp option delete 'robokassa_payment_sms1_text'
wp option delete 'robokassa_payment_sms2_enabled'
wp option delete 'robokassa_payment_sms2_text'
wp option delete 'robokassa_patyment_markup'
wp option delete 'robokassa_payment_type_commission'
wp option delete 'robokassa_payment_who_commission'
wp option delete 'robokassa_payment_robomarket_secret'
wp option delete 'robokassa_payment_size_commission'
wp option delete 'robokassa_payment_paymentMethod'
wp option delete 'robokassa_payment_paymentObject'

# Clear Cron Jobs
wp cron event delete 'robokassaCRON1'

