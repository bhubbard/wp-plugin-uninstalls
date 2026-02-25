#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_movider_sms_account_apikey'
wp option delete 'wc_movider_sms_account_secretkey'
wp option delete 'wc_movider_sms_from_name'
wp option delete 'wc_movider_sms_checkout_optin_checkbox_default'
wp option delete 'wc_movider_sms_checkout_optin_checkbox_label'
wp option delete 'wc_movider_sms_log_errors'
wp option delete 'wc_movider_sms_enable_admin_sms'
wp option delete 'wc_movider_sms_admin_sms_template'
wp option delete 'wc_movider_sms_admin_sms_recipients'
wp option delete 'wc_movider_sms_send_sms_order_statuses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sms_template'"
wp option delete 'wc_movider_sms_default_sms_template'

# Delete Transients
wp transient delete 'wc_movider_sms_balance'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_movider_sms_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_movider_sms_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_movider_sms_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_movider_sms_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_last_name'"
