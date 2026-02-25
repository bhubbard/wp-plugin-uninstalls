-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('campaignpress_db_version');
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_api_key';
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_heartbeat_data';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_campaigns_last';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_campaigns';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_audiences_last';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_audiences';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_templates_last';
DELETE FROM wp_options WHERE option_name LIKE '%_cache_templates';
DELETE FROM wp_options WHERE option_name LIKE '%_toast_messages';
DELETE FROM wp_options WHERE option_name LIKE '%_plugin_toast_messages';

