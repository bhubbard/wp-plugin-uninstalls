-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('my_plugin_consent', 'admin_login_consent', 'my_plugin_api_key', 'wplc_ocu_core_token', 'wplc_ocu_plugins_token', 'wplc_ocu_themes_token', 'active_sitewide_plugins', 'update_plugins', 'oss_security_results', 'update_core', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login_link_generated', 'one_time_login_token', 'one_time_login_expiration', 'one_time_login_usage_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login_link_generated', 'one_time_login_token', 'one_time_login_expiration', 'one_time_login_usage_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login_link_generated', 'one_time_login_token', 'one_time_login_expiration', 'one_time_login_usage_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login_link_generated', 'one_time_login_token', 'one_time_login_expiration', 'one_time_login_usage_count');

