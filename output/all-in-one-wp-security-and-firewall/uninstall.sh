#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aio_wp_security_configs'
wp option delete 'woocommerce_enable_guest_checkout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiowps_captcha_string_info_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aiowps_captcha_string_info_time_%'"
wp option delete 'aios_antibot_key_map_info'
wp option delete 'aiowpsec_db_version'
wp option delete 'aiowpsec_firewall_version'
wp option delete 'aiowps_temp_configs'
wp option delete 'updraft_interval_database'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_start_onboarding'"
wp option delete 'teamupdraft_installation_source_all-in-one-wp-security-and-firewall'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tfa_required_%'"
wp option delete 'tfa_required__super_admin'
wp option delete 'active_sitewide_plugins'
wp option delete 'auth_key'
wp option delete 'simba_tfa_priv_key_format'
wp option delete 'tfa_incorrect_code_attempts'
wp option delete 'admin_email_lifespan'
wp option delete 'updraft_task_manager_dbversion'
wp option delete 'updraft_task_manager_plugins'
wp option delete 'updraftcentral_client_log'
wp option delete 'menu_items'
wp option delete 'allowedthemes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'teamupdraft_installation_source_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_skipped_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_completed_onboarding'"
wp option delete 'woocommerce_myaccount_page_id'

# Delete Transients
wp transient delete 'aiowps_logout_payload'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_redirect_to_dashboard_page' OR option_name LIKE '_site_transient_%_redirect_to_dashboard_page'"
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'
wp transient delete 'teamupdraft_random_plugin_indexes'
wp transient delete 'teamupdraft_plugin_download_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_plugin_info' OR option_name LIKE '_site_transient_%_plugin_info'"

# Clear Cron Jobs
wp cron event delete 'aios_change_auth_keys_and_salt'
wp cron event delete 'aiowps_clean_old_events'
wp cron event delete 'aiowps_hourly_cron_event'
wp cron event delete 'aiowps_daily_cron_event'
wp cron event delete 'aios_15_minutes_cron_event'
wp cron event delete 'aiowps_weekly_cron_event'
wp cron event delete 'updraft_backup'
wp cron event delete 'updraft_backup_database'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_registrant_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_registrant_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_registrant_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_registrant_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_account_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_priv_key_64'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simba_tfa_emergency_codes_64'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aiowps_last_login_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'session_tokens'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_hotp_off_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_algorithm_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_last_pws'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_last_login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_hotp_counter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_enable_tfa'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tfa_trusted_devices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'updraftcentral_login_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_backup_sizes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_lock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_media_updraftcentral'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
