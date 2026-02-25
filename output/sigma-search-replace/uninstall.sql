-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sigma_ssr_replace_info', 'sigma_ssr_search_info', 'sigma_ssr_plugin_should_stop_search', 'sigma_ssr_plugin_settings');

