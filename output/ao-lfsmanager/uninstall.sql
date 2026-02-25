-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pss_lfsmanager_current_version', 'pss_lfsmanager_setting_remove_google_apis', 'pss_lfsmanager_setting_exclude_list', 'pss_lfsmanager_setting_enable_cache_styles', 'pss_lfsmanager_setting_enable_unite_styles', 'ao_lfsmanager_setting_remove_google_apis', 'ao_lfsmanager_current_version');
DELETE FROM wp_options WHERE option_name LIKE '%_remove_google_apis';

