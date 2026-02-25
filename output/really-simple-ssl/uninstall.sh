#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsssl_upgrade_firewall'
wp option delete 'rsssl_activation'
wp option delete 'rsssl_flush_rewrite_rules'
wp option delete 'rsssl_flush_caches'
wp option delete 'active_sitewide_plugins'
wp option delete 'rsssl_ssl_detection_overridden'
wp option delete 'rsssl_activation_timestamp'
wp option delete 'rsssl_admin_notices'
wp option delete 'rsssl_network_activation_status'
wp option delete 'https_migration_required'
wp option delete 'rsssl_free_deactivated'
wp option delete 'rsssl_before_review_notice_user'
wp option delete 'rlrsssl_options'
wp option delete 'rsssl_plusone_count'
wp option delete 'rsssl_6_notice_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismissed'"
wp option delete 'rsssl_show_onboarding'
wp option delete 'rsssl_previous_version'
wp option delete 'rsssl_permission_check_completed'
wp option delete 'rsssl_files_with_wrong_permissions'
wp option delete 'rsssl_permission_check_next_index'
wp option delete 'rsssl_homepage_contains_404_resources'
wp option delete 'rsssl_404_resources_to_check'
wp option delete 'rsssl_permalink_changed_to_plain'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tour_started'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tour_shown_once'"
wp option delete 'rsssl_ssl_activation_active'
wp option delete 'rsssl_run'
wp option delete 'rsssl_siteprocessing_progress'
wp option delete 'rsssl_auto_prepend_config'
wp option delete 'rsssl_onboarding_dismissed'
wp option delete 'rss_core_activation_flag'
wp option delete 'rsssl_main_key'
wp option delete 'rss_core_activation_source_page'
wp option delete 'rsssl_options'
wp option delete 'rlrsssl_network_options'
wp option delete 'rsssl_encryption_keys_set'
wp option delete 'rsssl_email_verification_status'
wp option delete 'rsssl_manually_changed_verification_type'
wp option delete 'rsssl_skip_dns_check'
wp option delete 'rsssl_private_key_path'
wp option delete 'rsssl_certificate_path'
wp option delete 'rsssl_intermediate_path'
wp option delete 'rsssl_skip_challenge_directory_request'
wp option delete 'rsssl_create_folders_in_root'
wp option delete 'rsssl_hosting_dashboard'
wp option delete 'rsssl_le_start_installation'
wp option delete 'rsssl_installation_error'
wp option delete 'rsssl_le_start_renewal'
wp option delete 'rsssl_le_dns_tokens'
wp option delete 'rsssl_le_dns_records_verified'
wp option delete 'rsssl_le_certificate_generated_by_rsssl'
wp option delete 'rsssl_le_dns_configured_by_rsssl'
wp option delete 'rsssl_le_certificate_installed_by_rsssl'
wp option delete 'rsssl_ssl_dirname'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rsssl_htaccess_file_set_%'"
wp option delete 'rsssl_initial_alias_domain_value_set'
wp option delete 'rsssl_upgrade_le_key'
wp option delete 'rsssl_le_key'
wp option delete 'rsssl_htaccess_file_set_key'
wp option delete 'rsssl_htaccess_file_set_certs'
wp option delete 'rsssl_htaccess_file_set_ssl'
wp option delete 'rsssl_le_installation_progress'
wp option delete 'rsssl_activation_time'
wp option delete 'rsssl_email_verification_code_expiration'
wp option delete 'rsssl_email_verification_code'
wp option delete 'rsssl_redirect_to_settings_page'
wp option delete 'rsssl_email_warning_fields'
wp option delete 'rsssl_email_warning_fields_saved'
wp option delete 'rsssl_csp_report_token'
wp option delete 'rsssl_activated_recommended_features_extendify'
wp option delete 'rsssl_htaccess_history'
wp option delete 'rsssl_deactivate_list'
wp option delete 'rsssl_firewall_error'
wp option delete 'rsssl_header_detection_nonce'
wp option delete 'rsssl_firewall_environment_signature'
wp option delete 'rsssl_completed_fixes'
wp option delete 'rsssl_http_methods_allowed'
wp option delete 'rsssl_wp_version_detected'
wp option delete 'rsssl_htaccess_should_wrap'
wp option delete 'rsssl_htaccess_error'
wp option delete 'rsssl_htaccess_rules'
wp option delete 'rsssl_updating_htaccess'
wp option delete 'rsssl_uploads_htaccess_error'
wp option delete 'rsssl_uploads_htaccess_rules'
wp option delete 'rsssl_last_tested_http_method'
wp option delete 'rsssl_wp_version_token'
wp option delete 'rsssl_reset_fix'
wp option delete 'rsssl_two_fa_upgrade'
wp option delete 'rsssl_two_fa_reminder_pending'
wp option delete 'rsssl_hashkey'
wp option delete 'rsssl_folder_name'
wp option delete 'rsssl_reload_vulnerability_files'
wp option delete 'rsssl_clear_vulnerability_notices'
wp option delete 'test_vulnerability_tester'
wp option delete 'rsssl_force_update'
wp option delete 'rsssl_quarantine'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rsssl_%'"
wp option delete 'rsssl_vulnerability_mail_sent_for'
wp option delete 'rsssl_ssl_labs_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_installed_license'"
wp option delete 'rsssl_current_version'
wp option delete 'rsssl_disable_ocsp'
wp option delete 'rsssl_options_lets-encrypt'
wp option delete 'rsssl_upgraded_to_four'
wp option delete 'rsssl_verification_type'
wp option delete 'rsssl_6_upgrade_completed'
wp option delete 'rsssl_key'
wp option delete 'rsssl_license_key'
wp option delete 'rsssl_ajax_fallback_active'

# Delete Transients
wp transient delete 'rsssl_certinfo'
wp transient delete 'rsssl_htaccess_test_success'
wp transient delete 'rsssl_can_use_curl_headers_check'
wp transient delete 'rsssl_mixed_content_fixer_detected'
wp transient delete 'rsssl_curl_error'
wp transient delete 'rsssl_testpage'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redirect_to_settings' OR option_name LIKE '_site_transient_%_redirect_to_settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redirect_to_settings_page' OR option_name LIKE '_site_transient_%_redirect_to_settings_page'"
wp transient delete 'rsssl_plugin_download_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugin_info' OR option_name LIKE '_site_transient_%_plugin_info'"
wp transient delete 'rsssl_le_generate_attempt_count'
wp transient delete 'rsssl_alias_domain_available'
wp transient delete 'rsssl_le_install_attempt_count'
wp transient delete 'rsssl_cw_t'
wp transient delete 'rsssl_cw_server_id'
wp transient delete 'rsssl_cw_app_id'
wp transient delete 'rsssl_xmlrpc_allowed'
wp transient delete 'rsssl_directory_indexing_status'
wp transient delete 'rsssl_code_execution_allowed_status'
wp transient delete 'rsssl_admin_user_count'
wp transient delete 'rsssl_admin_users'
wp transient delete 'rsssl_username_admin_changed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rsssl_two_factor_auth_error_%' OR option_name LIKE '_site_transient_rsssl_two_factor_auth_error_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_skip_two_fa_token_%' OR option_name LIKE '_site_transient_skip_two_fa_token_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rsssl_two_factor_backup_codes_%' OR option_name LIKE '_site_transient_rsssl_two_factor_backup_codes_%'"
wp transient delete 'rsssl_two_fa_forced_role_service'
wp transient delete 'rsssl_delay_clear'
wp transient delete 'update_themes'
wp transient delete 'update_plugins'
wp transient delete 'update_core'
wp transient delete 'rsssl_upgrade_dir'
wp transient delete 'rsssl_plusone_count'
wp transient delete 'rsssl_admin_notices'

# Clear Cron Jobs
wp cron event delete 'rsssl_every_day_hook'
wp cron event delete 'rsssl_every_three_hours_hook'
wp cron event delete 'rsssl_every_five_minutes_hook'
wp cron event delete 'rsssl_every_week_hook'
wp cron event delete 'rsssl_every_month_hook'
wp cron event delete 'rsssl_ssl_process_hook'
wp cron event delete 'rsssl_process_batched_users'
wp cron event delete 'rsssl_pro_every_hour_hook'
wp cron event delete 'rsssl_pro_every_day_hook'
wp cron event delete 'rsssl_pro_five_minutes_hook'
wp cron event delete 'rsssl_le_every_week_hook'
wp cron event delete 'rsssl_le_every_day_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_passkey_configured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_passkey_configured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_passkey_configured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_passkey_configured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_reminder_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_reminder_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_reminder_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_reminder_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_status_reset'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_status_reset'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_status_reset'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_status_reset'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_status_totp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_status_totp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_status_totp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_status_totp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_status_passkey'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_status_passkey'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_status_passkey'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_status_passkey'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_status_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_status_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_status_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_status_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsssl_factor_email_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsssl_factor_email_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsssl_factor_email_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsssl_factor_email_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsssl_two_factor_backup_codes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsssl_two_factor_backup_codes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsssl_two_factor_backup_codes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsssl_two_factor_backup_codes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_set_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_set_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_set_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_set_provider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rsssl_two_fa_skip_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rsssl_two_fa_skip_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rsssl_two_fa_skip_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rsssl_two_fa_skip_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsssl_factor_email_token_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsssl_factor_email_token_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsssl_factor_email_token_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsssl_factor_email_token_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rsssl_two_factor_nonce'"
