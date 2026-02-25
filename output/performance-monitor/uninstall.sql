-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qtpm_setting_settings', 'qtpm_plugin_post_types', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plugins_data', 'pagespeed_api_data', 'curl_data', 'qtpm_chart_month_cron_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('plugins_data', 'pagespeed_api_data', 'curl_data', 'qtpm_chart_month_cron_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('plugins_data', 'pagespeed_api_data', 'curl_data', 'qtpm_chart_month_cron_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plugins_data', 'pagespeed_api_data', 'curl_data', 'qtpm_chart_month_cron_data');

