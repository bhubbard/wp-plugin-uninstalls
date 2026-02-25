#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yoaa_wc_disable_email_on_registration'
wp option delete 'woocommerce_checkout_order_received_endpoint'
wp option delete 'woocommerce_myaccount_view_order_endpoint'
wp option delete 'yoaa_wc_enable_email_verification'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'yoaa_wc_enable_phone_number_account'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'yoaa_wc_enable_phone_login_with_otp'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'yoohw_phone_verification_sms_key'
wp option delete 'yoaa_wc_phone_verification_message'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_all_except_countries'
wp option delete 'wc_blacklist_manager_premium_license_status'
wp option delete 'yoaa_wc_enable_phone_verification'
wp option delete 'yoaa_wc_phone_verification_resend'
wp option delete 'yoaa_wc_phone_verification_code_length'
wp option delete 'yoaa_wc_phone_verification_resend_time'
wp option delete 'yoaa_wc_redirect_wp_login'
wp option delete 'yoaa_account_endpoints_order'
wp option delete 'yoaa_account_endpoints_titles'
wp option delete 'yoaa_account_endpoints_slugs'
wp option delete 'yoaa_account_endpoints_icons'
wp option delete 'yoaa_account_endpoints_manual_order'
wp option delete 'yoaa_account_endpoints_visible'
wp option delete 'yoohw_phone_verification_sms_quota'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_order_splitter_version'
wp option delete 'yoaa_account_endpoint_icon_position'
wp option delete 'woocommerce_enable_checkout_login_reminder'

# Delete Transients
wp transient delete 'email_verification_error'
wp transient delete 'account_activated_success'
wp transient delete 'yoaa_account_activated_success'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'temporary_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_create_account_during_checkout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_create_account_during_checkout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_create_account_during_checkout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_create_account_during_checkout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcaa_advabced_account_settings_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcaa_advabced_account_settings_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcaa_advabced_account_settings_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcaa_advabced_account_settings_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_advanced_accounts_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_advanced_accounts_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_advanced_accounts_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_advanced_accounts_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_advanced_accounts_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_advanced_accounts_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_advanced_accounts_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_advanced_accounts_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
