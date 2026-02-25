-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aio_wp_security_configs', 'woocommerce_enable_guest_checkout', 'aios_antibot_key_map_info', 'aiowpsec_db_version', 'aiowpsec_firewall_version', 'aiowps_temp_configs', 'updraft_interval_database', 'teamupdraft_installation_source_all-in-one-wp-security-and-firewall', 'tfa_required__super_admin', 'active_sitewide_plugins', 'auth_key', 'simba_tfa_priv_key_format', 'tfa_incorrect_code_attempts', 'admin_email_lifespan', 'updraft_task_manager_dbversion', 'updraft_task_manager_plugins', 'updraftcentral_client_log', 'menu_items', 'allowedthemes', 'woocommerce_myaccount_page_id', 'aiowps_logout_payload', 'update_plugins', 'update_themes', 'update_core', 'teamupdraft_random_plugin_indexes', 'teamupdraft_plugin_download_active');
DELETE FROM wp_options WHERE option_name LIKE 'aiowps_captcha_string_info_%';
DELETE FROM wp_options WHERE option_name LIKE 'aiowps_captcha_string_info_time_%';
DELETE FROM wp_options WHERE option_name LIKE '%_start_onboarding';
DELETE FROM wp_options WHERE option_name LIKE 'tfa_required_%';
DELETE FROM wp_options WHERE option_name LIKE 'teamupdraft_installation_source_%';
DELETE FROM wp_options WHERE option_name LIKE '%_skipped_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%_completed_onboarding';
DELETE FROM wp_options WHERE option_name LIKE '%_redirect_to_dashboard_page';
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_info';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aiowps_registrant_ip', 'aiowps_account_status', 'tfa_priv_key_64', 'simba_tfa_emergency_codes_64', 'aiowps_last_login_time', 'session_tokens', 'tfa_hotp_off_sync', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('aiowps_registrant_ip', 'aiowps_account_status', 'tfa_priv_key_64', 'simba_tfa_emergency_codes_64', 'aiowps_last_login_time', 'session_tokens', 'tfa_hotp_off_sync', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('aiowps_registrant_ip', 'aiowps_account_status', 'tfa_priv_key_64', 'simba_tfa_emergency_codes_64', 'aiowps_last_login_time', 'session_tokens', 'tfa_hotp_off_sync', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aiowps_registrant_ip', 'aiowps_account_status', 'tfa_priv_key_64', 'simba_tfa_emergency_codes_64', 'aiowps_last_login_time', 'session_tokens', 'tfa_hotp_off_sync', 'tfa_algorithm_type', 'tfa_last_pws', 'tfa_last_login', 'tfa_hotp_counter', 'tfa_enable_tfa', 'tfa_trusted_devices', 'updraftcentral_login_key', '_wp_attachment_image_alt', '_wp_attachment_backup_sizes', '_wp_page_template', '_edit_lock', 'featured_media_updraftcentral', '_thumbnail_id');

