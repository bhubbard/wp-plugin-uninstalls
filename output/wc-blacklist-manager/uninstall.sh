#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_blacklist_ip_enabled'
wp option delete 'wc_blacklist_form_blocking_enabled'
wp option delete 'wc_blacklist_sum_block_email'
wp option delete 'wc_blacklist_sum_block_total'
wp option delete 'wc_blacklist_domain_form'
wp option delete 'wc_blacklist_sum_block_domain'
wp option delete 'wc_blacklist_sum_block_phone'
wp option delete 'wc_blacklist_block_ip_form'
wp option delete 'wc_blacklist_sum_block_ip'
wp option delete 'wc_blacklist_block_proxy_vpn_form'
wp option delete 'wc_blacklist_email_form_block'
wp option delete 'wc_blacklist_form_notice'
wp option delete 'wc_blacklist_vpn_proxy_form_notice'
wp option delete 'wc_blacklist_domain_enabled'
wp option delete 'wc_blacklist_domain_action'
wp option delete 'wc_blacklist_domain_top_level'
wp option delete 'wc_blacklist_checkout_notice'
wp option delete 'wc_blacklist_domain_registration'
wp option delete 'wc_blacklist_domain_comment'
wp option delete 'wc_blacklist_comment_notice'
wp option delete 'wc_blacklist_ip_action'
wp option delete 'wc_blacklist_block_ip_registration'
wp option delete 'wc_blacklist_block_ip_comment'
wp option delete 'wc_advanced_accounts_premium_license_status'
wp option delete 'wc_blacklist_enable_user_blocking'
wp option delete 'wc_blacklist_blocked_user_notice'
wp option delete 'wc_blacklist_action'
wp option delete 'wc_blacklist_block_user_registration'
wp option delete 'yoaa_wc_enable_phone_number_account'
wp option delete 'wc_blacklist_order_delay'
wp option delete 'wc_blacklist_comment_blocking_enabled'
wp option delete 'wc_blacklist_customer_name_blocking_enabled'
wp option delete 'wc_blacklist_sum_block_name'
wp option delete 'wc_blacklist_enable_customer_address_blocking'
wp option delete 'wc_blacklist_sum_block_address'
wp option delete 'wc_blacklist_enable_shipping_address_blocking'
wp option delete 'wc_blacklist_registration_notice'
wp option delete 'wc_blacklist_email_notification'
wp option delete 'wc_blacklist_sender_name'
wp option delete 'wc_blacklist_sender_address'
wp option delete 'wc_blacklist_email_recipient'
wp option delete 'wc_blacklist_email_footer_text'
wp option delete 'wc_blacklist_email_blocking_notification'
wp option delete 'wc_blacklist_email_register_suspect'
wp option delete 'wc_blacklist_email_register_block'
wp option delete 'wc_blacklist_email_comment_suspect'
wp option delete 'wc_blacklist_email_comment_block'
wp option delete 'wc_blacklist_email_verification'
wp option delete 'wc_blacklist_email_verification_enabled'
wp option delete 'wc_blacklist_email_verification_action'
wp option delete 'wc_blacklist_phone_verification'
wp option delete 'wc_blacklist_phone_verification_enabled'
wp option delete 'wc_blacklist_phone_verification_action'
wp option delete 'yoohw_sms_service'
wp option delete 'yoohw_phone_verification_sms_key'
wp option delete 'wc_blacklist_phone_verification_failed_email'
wp option delete 'wc_blacklist_additional_emails'
wp option delete 'wc_blacklist_enable_global_blacklist'
wp option delete 'yogb_bm_api_key'
wp option delete 'yogb_bm_api_secret'
wp option delete 'yogb_bm_reporter_id'
wp option delete 'wc_blacklist_global_blacklist_decision_mode'
wp option delete 'wc_blacklist_settings_permission'
wp option delete 'wc_blacklist_dashboard_permission'
wp option delete 'wc_blacklist_connection_mode'
wp option delete 'wc_blacklist_notifications_permission'
wp option delete 'yoohw_settings_disable_menu'
wp option delete 'wc_blacklist_email_subject'
wp option delete 'wc_blacklist_email_message'
wp option delete 'wc_blacklist_email_form_suspect'
wp option delete 'wc_blacklist_vpn_proxy_checkout_notice'
wp option delete 'wc_blacklist_payment_method_notice'
wp option delete 'wc_blacklist_vpn_proxy_registration_notice'
wp option delete 'wc_blacklist_email_notice'
wp option delete 'wc_blacklist_phone_notice'
wp option delete 'wc_blacklist_access_blocked_ip'
wp option delete 'wc_blacklist_access_blocked_ip_country'
wp option delete 'wc_blacklist_access_blocked_browser'
wp option delete 'wc_blacklist_manager_premium_license_status'
wp option delete 'blacklist_manager_premium_for_forms_license_status'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_specific_allowed_countries'
wp option delete 'wc_blacklist_email_verification_real_time_validate'
wp option delete 'wc_blacklist_email_verification_disposable'
wp option delete 'wc_blacklist_manager_premium_enable_numcheckr'
wp option delete 'wc_blacklist_phone_verification_real_time_validate'
wp option delete 'wc_blacklist_name_verification_auto_capitalization'
wp option delete 'wc_blacklist_name_verification_real_time_validate'
wp option delete 'wc_blacklist_phone_verification_country_code_disabled'
wp option delete 'wc_blacklist_whitelist_merged_success'
wp option delete 'wc_blacklist_sum_name'
wp option delete 'wc_blacklist_sum_phone'
wp option delete 'wc_blacklist_sum_email'
wp option delete 'wc_blacklist_sum_ip'
wp option delete 'wc_blacklist_sum_address'
wp option delete 'wc_blacklist_sum_domain'
wp option delete 'wc_blacklist_sum_total'
wp option delete 'yogb_bm_tier'
wp option delete 'yoohw_phone_verification_sms_quota'
wp option delete 'wc_blacklist_manager_premium_zerobounce_api_key'
wp option delete 'wc_blacklist_manager_premium_bigdatacloud_api_key'
wp option delete 'wc_blacklist_manager_premium_numcheckr_api_key'
wp option delete 'wc_blacklist_manager_premium_license_key'
wp option delete 'wc_blacklist_manager_premium_license_expired'
wp option delete 'yoohw_settings_logger'
wp option delete 'woocommerce_new_order_recipient'
wp option delete 'woocommerce_default_country'
wp option delete 'wc_blacklist_manager_version'
wp option delete 'yogb_bm_reg_cooldown_until'
wp option delete 'yogb_bm_reg_attempts'
wp option delete 'yogb_bm_reg_backoff'
wp option delete 'yogb_bm_default_ttl_days'
wp option delete 'woocommerce_all_except_countries'
wp option delete 'wc_blacklist_manager_first_install_date'
wp option delete 'wc_blacklist_backfill_done'

# Delete Transients
wp transient delete 'yoohw_sms_verification_failed'
wp transient delete 'yogb_bm_reg_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_yogb_bm_payload_%' OR option_name LIKE '_site_transient_yogb_bm_payload_%'"

# Clear Cron Jobs
wp cron event delete 'wc_blacklist_delayed_order_cancel'
wp cron event delete 'wc_blacklist_manager_cleanup_verification_code'
wp cron event delete 'wc_blacklist_connection_send_to_subsite'
wp cron event delete 'wc_blacklist_connection_update_to_subsite'
wp cron event delete 'wc_blacklist_connection_update_to_hostsite'
wp cron event delete 'wc_blacklist_connection_remove_to_subsite'
wp cron event delete 'wc_blacklist_connection_send_to_hostsite'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_blocked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_blocked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_blocked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_blocked'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phone_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phone_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phone_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phone_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone_verification'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_ip_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_blacklist_manager_activation_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_blacklist_manager_activation_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_blacklist_manager_activation_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_blacklist_manager_activation_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_blacklist_manager_never_show_again'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_blacklist_manager_never_show_again'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_blacklist_manager_never_show_again'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_blacklist_manager_never_show_again'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wc_blacklist_manager_first_time_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wc_blacklist_manager_first_time_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wc_blacklist_manager_first_time_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wc_blacklist_manager_first_time_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blacklist_manager_premium_ads_time'"
