-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fmai_token', 'fmai_settings_updated', 'fmai_show_ads_txt_updated_notice', 'fmai_ads_txt', 'fmai_exiting_ads_txt', 'fmai_analytics_enabled', 'fmai_analytics_code', 'fmai_push_enabled');

