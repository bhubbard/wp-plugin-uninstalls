-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('secupress_active_plugins', 'secupress_active_themes', 'secupress_default_role', 'active_sitewide_plugins', 'secupress_step1_report', 'secupress_scan_phpversion', 'secupress_scan_wp_config', 'secupress_captcha_keys', 'registration', 'sfml', 'sfml_version', 'movelogin_users-login_settings', 'movelogin_settings', 'movelogin_active_submodule_move-login', 'secupress_antispam_settings', 'secupress_firewall_settings', 'secupress_geoip_installed', 'secupress_settings', 'secupress_activation', 'secupress-deactivation-form', 'settings_errors', 'secupress_updates_message', 'secupress-common', 'secupress_unlock_admin_key', 'secupress-notices-0', 'secupress_sideads', 'update_plugins', 'update_themes', 'secupress_is_https_supported', 'secupress_scan_subscription_token', 'secupress_registration_test', 'secupress-test-hostname', 'secupress_active_submodules', 'secupress_ssl_status', 'secupress_ssl_status_domain');
DELETE FROM wp_options WHERE option_name LIKE 'secupress_active_submodule_%';
DELETE FROM wp_options WHERE option_name LIKE 'secupress_unlock_admin_key-%';
DELETE FROM wp_options WHERE option_name LIKE 'secupress-notices-%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE 'secupress_plugins_api_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', 'secupress_attacks_widget_chart_months', 'secupress_migration_congrats', 'user_ip', 'user_id', 'user_login', 'data', 'secupress-password-needs-rehash', '_secupress_log_http_history', '_secupress_limitloginattempts', 'secupress-blind-password');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', 'secupress_attacks_widget_chart_months', 'secupress_migration_congrats', 'user_ip', 'user_id', 'user_login', 'data', 'secupress-password-needs-rehash', '_secupress_log_http_history', '_secupress_limitloginattempts', 'secupress-blind-password');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', 'secupress_attacks_widget_chart_months', 'secupress_migration_congrats', 'user_ip', 'user_id', 'user_login', 'data', 'secupress-password-needs-rehash', '_secupress_log_http_history', '_secupress_limitloginattempts', 'secupress-blind-password');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', 'secupress_attacks_widget_chart_months', 'secupress_migration_congrats', 'user_ip', 'user_id', 'user_login', 'data', 'secupress-password-needs-rehash', '_secupress_log_http_history', '_secupress_limitloginattempts', 'secupress-blind-password');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%secupress_antiphishingcode';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%secupress_antiphishingcode';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%secupress_antiphishingcode';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%secupress_antiphishingcode';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_history';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_history';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_history';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_history';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counter';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counter';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counter';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counter';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_from';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'secupress-bad-mx-%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'secupress-bad-mx-%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'secupress-bad-mx-%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'secupress-bad-mx-%';

