#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'password_mismatch'
wp option delete 'default_country_code'
wp option delete 'mo_form_sms_notification_settings'
wp option delete 'mowc_sms_notification_settings'
wp option delete 'mo_wc_customer_validation_admin_email'
wp option delete 'mo_wc_customer_validation_company_name'
wp option delete 'mo_wc_customer_validation_first_name'
wp option delete 'mo_wc_customer_validation_last_name'
wp option delete 'mo_wc_customer_validation_wc_default_enable'
wp option delete 'mo_wc_customer_validation_wc_enable_type'
wp option delete 'mo_wc_customer_validation_wc_social_login_enable'
wp option delete 'mo_wc_customer_validation_wc_checkout_enable'
wp option delete 'mo_wc_customer_validation_wc_checkout_type'
wp option delete 'mo_wc_customer_validation_wc_redirect'
wp option delete 'mo_wc_customer_validation_wc_checkout_button'
wp option delete 'mo_wc_customer_validation_wc_checkout_guest'
wp option delete 'mo_wc_customer_validation_check_ln'
wp option delete 'mo_wc_customer_validation_wp_login_enable'
wp option delete 'mo_wc_customer_validation_wp_login_register_phone'
wp option delete 'mo_wc_customer_validation_wp_login_bypass_admin'
wp option delete 'mo_wc_customer_validation_wp_login_key'
wp option delete 'mo_wc_customer_validation_wp_member_reg_enable'
wp option delete 'mo_wc_customer_validation_wp_member_reg_enable_type'
wp option delete 'mo_wc_customer_validation_default_country_code'
wp option delete 'mo_wc_customer_validation_wc_checkout_popup'
wp option delete 'mo_wc_customer_validation_wp_login_allow_phone_login'
wp option delete 'mo_wc_customer_validation_wp_login_restrict_duplicates'
wp option delete 'mo_wc_customer_validation_blocked_domains'
wp option delete 'mo_wc_customer_validation_blocked_phone_numbers'
wp option delete 'mo_wc_customer_validation_wp_reg_restrict_duplicates'
wp option delete 'mo_wc_customer_validation_show_remaining_trans'
wp option delete 'mo_wc_customer_validation_show_dropdown_on_form'
wp option delete 'mo_wc_customer_validation_email_verification_lk'
wp option delete 'mo_wc_customer_validation_site_email_ckl'
wp option delete 'mo_wc_customer_validation_wc_checkout_payment_type'
wp option delete 'mo_wc_customer_validation_otp_length'
wp option delete 'mo_wc_customer_validation_otp_validity'
wp option delete 'mo_wc_customer_validation_generate_alphanumeric_otp'
wp option delete 'mo_wc_customer_validation_globally_banned_phone'
wp option delete 'mo_wc_customer_validation_masterotp_validity'
wp option delete 'mo_wc_customer_validation_masterotp_admin'
wp option delete 'mo_wc_customer_validation_masterotp_user'
wp option delete 'mo_wc_customer_validation_masterotp_admins'
wp option delete 'mo_wc_customer_validation_masterotp_specific_user'
wp option delete 'mo_wc_customer_validation_masterotp_specific_user_details'
wp option delete 'mo_wc_customer_validation_wc_checkout_selective_payment'
wp option delete 'mo_wc_customer_validation_custom_popups'
wp option delete 'mo_wc_customer_validation_wc_checkout_button_link_text'
wp option delete 'mo_wc_customer_validation_wc_billing_enable'
wp option delete 'mo_wc_customer_validation_wc_billing_type_enabled'
wp option delete 'mo_wc_customer_validation_wc_billing_restrict_duplicates'
wp option delete 'mo_wc_customer_validation_wc_checkout_restrict_duplicates'
wp option delete 'mo_wc_customer_validation_wc_checkout_disable_auto_login'
wp option delete 'mo_wc_otp_success_email_message'
wp option delete 'mo_wc_otp_success_phone_message'
wp option delete 'mo_wc_otp_error_phone_message'
wp option delete 'mo_wc_otp_error_email_message'
wp option delete 'mo_wc_otp_invalid_phone_message'
wp option delete 'mo_wc_otp_invalid_email_message'
wp option delete 'mo_wc_otp_blocked_phone_message'
wp option delete 'mo_wc_otp_blocked_email_message'
wp option delete 'mo_wc_otp_invalid_message'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcsl_%' OR option_name LIKE '_site_transient_wcsl_%'"

# Clear Cron Jobs
wp cron event delete 'hourlySync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enter_otp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enter_otp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enter_otp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enter_otp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'telephone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_login_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_login_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_login_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_login_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_login_timestamp_gmt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_login_timestamp_gmt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_login_timestamp_gmt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_login_timestamp_gmt'"
