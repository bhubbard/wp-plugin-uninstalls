#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'res_calendar_color'
wp option delete 'res_color'
wp option delete 'res_security_plugin'
wp option delete 'res_security_settings'
wp option delete 'res_db_version'
wp option delete 'res_days'
wp option delete 'res_full_uninstall'
wp option delete 'res_terms'
wp option delete 'res_calc'
wp option delete 'res_mail_admin_subject'
wp option delete 'res_mail_admin_message'
wp option delete 'res_mail_client_subject'
wp option delete 'res_mail_client_message'
wp option delete 'res_advance_payment_in_percents'
wp option delete 'res_pay_paypal_enabled'
wp option delete 'res_pay_pos_enabled'
wp option delete 'res_pay_robokassa_enabled'
wp option delete 'res_pay_sber_enabled'
wp option delete 'res_pay_webmoney_enabled'
wp option delete 'res_pay_mobcash_enabled'

