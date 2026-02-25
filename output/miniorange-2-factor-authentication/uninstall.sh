#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mo2f_email'
wp option delete 'mo2f_password'
wp option delete 'mo2f_transactionId'
wp option delete 'mo2f_google_appname'
wp option delete 'mo2f_customerKey'
wp option delete 'mo2f_remember_ip_configurations'
wp option delete 'mo2f_custom_login_form_configurations'
wp option delete 'mo2f_custom_registration_form_configurations'
wp option delete 'mo2f_select_methods_for_users'
wp option delete 'mo2f_auth_methods_for_users'
wp option delete 'mo2f_auth_methods_roles'
wp option delete 'mo2f_all_users_method'
wp option delete 'mo2f_page_protection_addon_settings'
wp option delete 'mo2f_enable_custom_redirect'
wp option delete 'mo2f_custom_login_urls'
wp option delete 'mo2f_enable_debug_log'
wp option delete 'mo2f_planname'
wp option delete 'mo_2fa_addon_plan_type'
wp option delete 'mo_2fa_plan_type'
wp option delete 'mo2f_customer_selected_plan'
wp option delete 'mo_wpns_admin_phone'
wp option delete 'mo_wpns_iprange_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo_wpns_iprange_range_%'"
wp option delete 'mo2f_wa_access_token'
wp option delete 'mo2f_wa_phone_id'
wp option delete 'mo2f_wa_template_id'
wp option delete 'mo2f_wa_template_language'
wp option delete 'mo2f_wa_otp_length'
wp option delete 'mo_2factor_admin_registration_status'
wp option delete 'mo2f_api_key'
wp option delete 'mo2f_customer_token'
wp option delete 'mo2f_show_sms_transaction_message'
wp option delete 'mo_wpns_2fa_with_network_security'
wp option delete 'mo2f_tab_count'
wp option delete 'mo_2f_switch_adv_block'
wp option delete 'mo2f_network_transactions_data'
wp option delete 'mo2f_default_kbaquestions_users'
wp option delete 'mo2f_custom_kbaquestions_users'
wp option delete 'mo2f_custom_security_questions'
wp option delete 'mo2f_custom_2fa_popup_css'
wp option delete 'mo2f_email_verification_settings'
wp option delete 'mo2f_dbversion'
wp option delete 'cmVtYWluaW5nT1RQ'
wp option delete 'bGltaXRSZWFjaGVk'
wp option delete 'mo_wpns_dbversion'
wp option delete 'mo2f_blocked_ips_data'
wp option delete 'mo2f_whitelisted_ips'
wp option delete 'malware_notification_option'
wp option delete 'notice_dismiss_time'
wp option delete 'plugin_warning_never_show_again'
wp option delete 'mo2f_banner_never_show_again'
wp option delete 'mo2f_wpns_sms_dismiss'
wp option delete 'mo2f_wpns_email_dismiss'
wp option delete 'mo2f_wpns_donot_show_low_sms_notice'
wp option delete 'mo2f_wpns_donot_show_low_email_notice'
wp option delete 'mo2f_activated_time'
wp option delete 'No_of_days_active_work'
wp option delete 'mo2f_handle_migration_status'
wp option delete 'mo2f_session_allowed_type'
wp option delete 'mo2f_activate_plugin'
wp option delete 'mo2f_grace_period'
wp option delete 'mo2f_graceperiod_action'
wp option delete 'mo2f_nonce_enable_configured_methods'
wp option delete 'mo2f_multi_factor_authentication'
wp option delete 'mo2f_mail_notify_new_release'
wp option delete 'mo2f_enable_backup_methods'
wp option delete 'mo2f_enabled_backup_methods'
wp option delete 'mo2f_restrict_restAPI'
wp option delete 'mo_wpns_activate_recaptcha_for_woocommerce_registration'
wp option delete 'WAFEnabled'
wp option delete 'WAF'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo2fa_%'"
wp option delete 'mo_wpns_enable_unusual_activity_email_to_user'
wp option delete 'mo2f_enable_login_report'
wp option delete 'mo2f_disable_inline_registration'
wp option delete 'mo2f_enable_shortcodes'
wp option delete 'admin_email_address'
wp option delete 'mo_wpns_company'
wp option delete 'mo_wpns_password'
wp option delete 'mo_wpns_registration_status'
wp option delete 'mo2f_license_type'
wp option delete 'cmVtYWluaW5nT1RQVHJhbnNhY3Rpb25z'
wp option delete 'EmailTransactionCurrent'
wp option delete 'mo_wpns_iprange_range_1'
wp option delete 'mo2f_wizard_skipped'
wp option delete 'mo2f_remember_device'
wp option delete 'mo2f_inline_registration'
wp option delete 'mo2f_login_with_mfa_use'
wp option delete 'mo2fa_superadmin'
wp option delete 'mo2f_custom_logo'
wp option delete 'mo_wpns_2fa_with_network_security_popup_visible'
wp option delete 'mo2f_custom_form_name'
wp option delete 'mo2f_enable_form_shortcode'
wp option delete 'mo2f_custom_notification_selector'
wp option delete 'mo2f_custom_success_selector'
wp option delete 'mo2f_custom_error_selector'
wp option delete 'mo2f_customerkey'
wp option delete 'mo2f_country_code'
wp option delete 'mo_wpns_activate_recaptcha_for_registration'
wp option delete 'mo_wpns_recaptcha_version'
wp option delete 'mo_wpns_enable_fake_domain_blocking'
wp option delete 'number_of_fake_reg'
wp option delete 'mo_wpns_verify_customer'
wp option delete 'mo_wpns_new_registration'
wp option delete 'mo2f_time_slice'
wp option delete 'mo2fa_lk'
wp option delete 'mo2f_woocommerce_login_prompt'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo2f_grace_period_status_%'"
wp option delete 'mo2f_onprem_admin'
wp option delete 'mo2f_network_features'
wp option delete 'mo2f_encryption_key'
wp option delete 'mo2f_miniorange_admin'
wp option delete 'mo2f_user_sync'
wp option delete 'mo2f_login_option_updated'
wp option delete 'mo2f_plugin_redirect'
wp option delete 'mo2f_register_with_another_email'
wp option delete 'mo2f_tour_started'
wp option delete 'mo2f_bug_fix_done'
wp option delete 'mo2f_message'
wp option delete 'kba_questions'
wp option delete 'mo2f_d_integration_key'
wp option delete 'mo2f_d_secret_key'
wp option delete 'mo2f_d_api_hostname'
wp option delete 'duo_credentials_save_successfully'
wp option delete 'mo2f_enable_2fa_for_users'
wp option delete 'mo2f_enable_2fa'
wp option delete 'mo2f_number_of_transactions'
wp option delete 'mo2f_enable_login_with_2nd_factor'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_meta'"
wp option delete 'mo2f_custom_redirect_url'
wp option delete 'user_phone_temp'
wp option delete 'mo2f_grace_period_value'
wp option delete 'mo2f_grace_period_type'
wp option delete 'mo2f_app_secret'
wp option delete 'mo2f_enable_login_popup_customization'
wp option delete 'mo_wpns_transactionId'
wp option delete 'mo2f_redirect_url_for_users'
wp option delete 'mo2f_time_of_blocking_type'
wp option delete 'mo2f_time_of_blocking_val'
wp option delete 'mo2fa_visit'
wp option delete 'mo2f_is_inline_used'
wp option delete 'mo_2fa_pnp'
wp option delete 'mo2f_wizard_selected_method'
wp option delete 'custom_user_template'
wp option delete 'mo2f_maximum_allowed_session'
wp option delete 'mo2f_enable_forgotphone_email'
wp option delete 'mo2f_enable_forgotphone_kba'
wp option delete 'mo_wpns_enable_log_requests'
wp option delete 'is_onprem'
wp option delete 'mo2f_disable_file_editing'
wp option delete 'mo2f_is_NC'
wp option delete 'mo2f_is_NNC'
wp option delete 'mo_wpns_last_scan_time'
wp option delete 'mo2f_mail_notify'
wp option delete 'mo2f-enforcement-policy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo2f_user_login_status_%'"
wp option delete 'mo2f_feature_vers'
wp option delete 'mo2f_whitelisted_ips_migrated'
wp option delete 'mo2f_blocked_ips_migrated'
wp option delete 'mo2f_user_details_migrated'
wp option delete 'mo2f_wpns_attack_logs_and_mo2f_network_email_sent_audit_dropped'
wp option delete 'mo_wpns_customer_token'
wp option delete 'mo_wpns_message'
wp option delete 'mo2fa_free_plan_new_user_methods'
wp option delete 'mo2fa_free_plan_existing_user_methods'
wp option delete 'mo2fa_reconfiguration_via_email'
wp option delete 'mo2fa_userProfile_method'
wp option delete 'mo_wpns_enable_brute_force'
wp option delete 'mo_wpns_show_remaining_attempts'
wp option delete 'mo_wpns_enable_ip_blocked_email_to_admin'
wp option delete 'mo_wpns_firstName'
wp option delete 'mo_wpns_lastName'
wp option delete 'mo_wpns_block_chrome'
wp option delete 'mo_wpns_block_firefox'
wp option delete 'mo_wpns_block_ie'
wp option delete 'mo_wpns_block_safari'
wp option delete 'mo_wpns_block_opera'
wp option delete 'mo_wpns_block_edge'
wp option delete 'mo_2factor_user_registration_status'
wp option delete 'mo_2f_switch_all'
wp option delete 'mo_wpns_scan_initialize'
wp option delete 'mo_wpns_enable_htaccess_blocking'
wp option delete 'mo_wpns_enable_user_agent_blocking'
wp option delete 'mo_wpns_countrycodes'
wp option delete 'mo_wpns_referrers'
wp option delete 'protect_wp_config'
wp option delete 'prevent_directory_browsing'
wp option delete 'disable_file_editing'
wp option delete 'mo_wpns_enable_comment_spam_blocking'
wp option delete 'mo_wpns_enable_comment_recaptcha'
wp option delete 'mo_wpns_slow_down_attacks'
wp option delete 'mo_wpns_enable_2fa'
wp option delete 'mo_wpns_activate_recaptcha'
wp option delete 'mo_wpns_activate_recaptcha_for_login'
wp option delete 'mo_wpns_activate_recaptcha_for_woocommerce_login'
wp option delete 'mo_wpns_recaptcha_site_key'
wp option delete 'mo_wpns_recaptcha_secret_key'
wp option delete 'custom_admin_template'
wp option delete 'mo_wpns_enable_advanced_user_verification'
wp option delete 'mo_customer_validation_wp_default_enable'
wp option delete 'mo_wpns_enable_social_integration'
wp option delete 'mo_wpns_scan_plugins'
wp option delete 'mo_wpns_scan_themes'
wp option delete 'mo_wpns_check_vulnerable_code'
wp option delete 'mo_wpns_check_sql_injection'
wp option delete 'mo_wpns_scan_wp_files'
wp option delete 'mo_wpns_skip_folders'
wp option delete 'mo_wpns_check_external_link'
wp option delete 'mo_wpns_scan_files_with_repo'
wp option delete 'mo_wpns_files_scanned'
wp option delete 'mo_wpns_infected_files'
wp option delete 'user_phone'
wp option delete 'mo_2f_login_type_enabled'
wp option delete 'mo2_admin_last_name'
wp option delete 'SQLInjection'
wp option delete 'XSSAttack'
wp option delete 'RFIAttack'
wp option delete 'LFIAttack'
wp option delete 'RCEAttack'
wp option delete 'actionRateL'
wp option delete 'Rate_limiting'
wp option delete 'Rate_request'
wp option delete 'limitAttack'
wp option delete 'skip_tour'
wp option delete 'mo_wpns_scan_files_extensions'
wp option delete 'donot_show_feedback_message'
wp option delete 'mo_wpns_enable_rename_login_url'
wp option delete 'login_page_url'
wp option delete 'mo_wpns_scan_mode'
wp option delete 'mo_wpns_malware_scan_in_progress'
wp option delete 'scan_failed'
wp option delete 'recovery_mode_email_last_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_login_url'"
wp option delete 'mo_2factor_admin_mobile_registration_status'
wp option delete 'mo_2factor_registration_status'
wp option delete 'mo_2factor_temp_status'
wp option delete 'mo_2factor_login_status'
wp option delete 'mo_2f_switch_waf'
wp option delete 'mo_2f_switch_loginspam'
wp option delete 'mo_2f_switch_malware'
wp option delete 'mo_wpns_last_themes'
wp option delete 'mo_wpns_last_plugins'
wp option delete 'infected_dismiss'
wp option delete 'weekly_dismiss'
wp option delete 'donot_show_infected_file_notice'
wp option delete 'donot_show_new_plugin_theme_notice'
wp option delete 'donot_show_weekly_scan_notice'
wp option delete 'mo2f_login_option'
wp option delete 'mo2f_show_loginwith_phone'
wp option delete 'mo2f_enable_rba_types'
wp option delete 'mo2f_device_expiry'
wp option delete 'mo2f_device_limit'
wp option delete 'mo2f_action_rba_limit_exceed'
wp option delete 'mo2f_sesssion_restriction'
wp option delete 'mo2f_session_logout_time_enable'
wp option delete 'mo2f_number_of_timeout_hours'
wp option delete 'mo2f_enable_custom_login_form'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mo2f_auth_methods_for_%'"
wp option delete 'mo2f_setup_complete'
wp option delete 'mo2f_is_old_customer'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_transactionId' OR option_name LIKE '_site_transient_%mo2f_transactionId'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo_2_factor_kba_questions' OR option_name LIKE '_site_transient_%mo_2_factor_kba_questions'"
wp transient delete 'mo2f_query_sent'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_user_id' OR option_name LIKE '_site_transient_%mo2f_user_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_backupcode_generated%' OR option_name LIKE '_site_transient_mo2f_backupcode_generated%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_user_transaction_details' OR option_name LIKE '_site_transient_%mo2f_user_transaction_details'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_page_protection_flow_%' OR option_name LIKE '_site_transient_mo2f_page_protection_flow_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_google_auth_used_otp_%' OR option_name LIKE '_site_transient_mo2f_google_auth_used_otp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_show_setup_success_prompt%' OR option_name LIKE '_site_transient_mo2f_show_setup_success_prompt%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%tempRegEmail' OR option_name LIKE '_site_transient_%tempRegEmail'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_otp_send_true' OR option_name LIKE '_site_transient_%mo2f_otp_send_true'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%user_phone_temp' OR option_name LIKE '_site_transient_%user_phone_temp'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_temp_chatID' OR option_name LIKE '_site_transient_%mo2f_temp_chatID'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_otp_token' OR option_name LIKE '_site_transient_%mo2f_otp_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_telegram_time' OR option_name LIKE '_site_transient_%mo2f_telegram_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_page_protection_flow_1%' OR option_name LIKE '_site_transient_mo2f_page_protection_flow_1%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_attempts_before_redirect' OR option_name LIKE '_site_transient_%mo2f_attempts_before_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mo2f_show_notification%' OR option_name LIKE '_site_transient_mo2f_show_notification%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%mo2f_otp_transaction_details' OR option_name LIKE '_site_transient_%mo2f_otp_transaction_details'"
wp transient delete 'ip_whitelisted'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_transactionId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_transactionId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_transactionId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_transactionId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_secret_ga'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_secret_ga'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_secret_ga'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_secret_ga'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_ga_qrCode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_ga_qrCode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_ga_qrCode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_ga_qrCode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_google_auth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_google_auth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_google_auth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_google_auth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_2FA_method_to_configure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_2FA_method_to_configure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_2FA_method_to_configure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_2FA_method_to_configure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_configure_2FA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_configure_2FA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_configure_2FA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_configure_2FA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_external_app_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_external_app_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_external_app_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_external_app_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_user_profile_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_user_profile_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_user_profile_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_user_profile_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_user_2fa_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_user_2fa_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_user_2fa_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_user_2fa_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'currentMethod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'currentMethod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'currentMethod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'currentMethod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'donot_show_backup_code_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'donot_show_backup_code_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'donot_show_backup_code_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'donot_show_backup_code_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_backup_code_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_backup_code_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_backup_code_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_backup_code_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_backup_code_downloaded'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_backup_code_downloaded'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_backup_code_downloaded'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_backup_code_downloaded'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_grace_period_start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_grace_period_start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_grace_period_start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_grace_period_start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_reset_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_reset_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_reset_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_reset_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_kba_challenge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_kba_challenge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_kba_challenge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_kba_challenge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Security Questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Security Questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Security Questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Security Questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_chat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_chat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_chat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_chat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_2FA_method_to_test'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_2FA_method_to_test'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_2FA_method_to_test'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_2FA_method_to_test'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_get_auth_rnd_string'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_get_auth_rnd_string'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_get_auth_rnd_string'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_get_auth_rnd_string'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_gauth_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_gauth_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_gauth_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_gauth_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_email_otp_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_email_otp_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_email_otp_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_email_otp_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_2fa_verify_otp_create_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_2fa_verify_otp_create_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_2fa_verify_otp_create_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_2fa_verify_otp_create_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'register_account_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'register_account_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'register_account_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'register_account_popup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_sms_otp_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_sms_otp_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_sms_otp_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_sms_otp_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'test_2FA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'test_2FA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'test_2FA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'test_2FA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_otp_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_otp_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_otp_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_otp_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_telegram_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_telegram_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_telegram_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_telegram_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tempEmail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tempEmail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tempEmail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tempEmail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_not_enroll'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_not_enroll'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_not_enroll'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_not_enroll'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_2_factor_kba_questions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_2_factor_kba_questions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_2_factor_kba_questions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_2_factor_kba_questions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_otp_send_true'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_otp_send_true'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_otp_send_true'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_otp_send_true'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_not_enroll_on_duo_before'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_not_enroll_on_duo_before'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_not_enroll_on_duo_before'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_not_enroll_on_duo_before'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'user_phone_temp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'user_phone_temp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'user_phone_temp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'user_phone_temp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_email_miniOrange'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_email_miniOrange'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_email_miniOrange'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_email_miniOrange'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_backup_method_set'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_backup_method_set'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_backup_method_set'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_backup_method_set'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_userprofile_error_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_userprofile_error_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_userprofile_error_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_userprofile_error_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_backup_code_screen_shown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_backup_code_screen_shown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_backup_code_screen_shown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_backup_code_screen_shown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'register_account'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'register_account'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'register_account'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'register_account'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_whatsapp_num'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_whatsapp_num'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_whatsapp_num'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_whatsapp_num'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_whatsapp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_whatsapp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_whatsapp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_whatsapp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo2f_rba_device_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo2f_rba_device_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo2f_rba_device_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo2f_rba_device_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kba_questions_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kba_questions_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kba_questions_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kba_questions_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mo_backup_code_limit_reached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mo_backup_code_limit_reached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mo_backup_code_limit_reached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mo_backup_code_limit_reached'"
