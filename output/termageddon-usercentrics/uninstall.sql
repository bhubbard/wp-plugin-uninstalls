-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('termageddon_usercentrics_settings_id', 'termageddon_usercentrics_embed_code', 'termageddon_usercentrics_script_snippets', 'termageddon_usercentrics_disable_admin', 'termageddon_usercentrics_disable_editor', 'termageddon_usercentrics_disable_logged_in', 'termageddon_usercentrics_location_psl_hide', 'termageddon_usercentrics_psl_alternate', 'termageddon_usercentrics_embed_priority', 'termageddon_usercentrics_embed_injection_method', 'termageddon_usercentrics_embed_version', 'termageddon_usercentrics_disable_auto_blocker', 'termageddon_usercentrics_disable_cdn', 'termageddon_usercentrics_disable_troubleshooting', 'termageddon_usercentrics_geoip_enabled', 'termageddon_usercentrics_location_debug', 'termageddon_usercentrics_location_ajax', 'termageddon_usercentrics_auto_refresh_providers', 'termageddon_usercentrics_disable_blocking_providers', 'termageddon_usercentrics_download_error_count', 'termageddon_usercentrics_download_error_log');
DELETE FROM wp_options WHERE option_name LIKE 'termageddon_usercentrics_show_in_%';
DELETE FROM wp_options WHERE option_name LIKE 'termageddon_usercentrics_integration_%';

