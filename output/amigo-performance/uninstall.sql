-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('amigoperf_version_updated', 'amigoperf_asset_cache', 'amigoperf_activation_version', 'amigoperf_last_version_check', 'amigoPerf_nq_script', 'amigoPerf_nq_style', 'amigoperf_major_update_3_0', 'amigoPerf_rqs', 'amigoPerf_remoji', 'amigoPerf_defer', 'amigoPerf_iframelazy', 'amigoPerf_lazyload', 'amigoPerf_minify_css', 'amigoPerf_minify_js', 'amigoPerf_plugin_version', 'amigoperf_error_log', 'amigoperf_network_version', 'amigoperf_network_activated', 'amigoperf_network_settings', 'amigoperf_stats', 'amigoperf_asset_data', 'amigoperf_version_check', 'amigoperf_network_stats', 'amigoperf_network_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('amigoperf_hide_notices', 'amigoperf_preferences');
DELETE FROM wp_usermeta WHERE meta_key IN ('amigoperf_hide_notices', 'amigoperf_preferences');
DELETE FROM wp_termmeta WHERE meta_key IN ('amigoperf_hide_notices', 'amigoperf_preferences');
DELETE FROM wp_commentmeta WHERE meta_key IN ('amigoperf_hide_notices', 'amigoperf_preferences');

