#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'et_balance'
wp option delete 'etApiAuth'
wp option delete 'et_notifications'
wp option delete 'resend_msg_request'
wp option delete 'et_send_sms'
wp option delete 'expt_rmfile'
wp option delete 'et_api_set'
wp option delete 'etApiAuthHidden'
wp option delete 'et_balance_datetime'
wp option delete 'et_integration_edd'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'et_wpcf7_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'et_wpcf7_form_%'"
wp option delete 'et_integration_woocommerce'
wp option delete 'et_integration_gf'
wp option delete 'et_integration_qf'
wp option delete 'et_integration_bp'
wp option delete 'et_newsletter'
wp option delete 'et_menu'
wp option delete 'et_plugin_db_version'
wp option delete 'et_plugin_update_redirect_to'
wp option delete 'et_integration'
wp option delete 'et_integration_cf7'
wp option delete 'et_general_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'expttxt_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'et_send_code_limit_time%'"
wp option delete 'et_subscriber_data'

# Delete Transients
wp transient delete '__expttxt_need_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expt_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expt_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expt_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expt_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_verify_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_verify_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_verify_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_verify_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_user_register'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_user_register'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_user_register'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_user_register'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'et_sms_mob_dial_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'et_sms_mob_dial_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'et_sms_mob_dial_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'et_sms_mob_dial_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_number_invalid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_number_invalid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_number_invalid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_number_invalid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_number_exist'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_number_exist'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_number_exist'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_number_exist'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expt_mobile_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expt_mobile_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expt_mobile_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expt_mobile_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_verify_code_entry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_verify_code_entry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_verify_code_entry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_verify_code_entry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expt_enable_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expt_enable_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expt_enable_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expt_enable_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_code_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_code_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_code_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_code_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expttxt_otp_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expttxt_otp_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expttxt_otp_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expttxt_otp_count'"
