-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpsea_func_generator_enabled', 'wpsea_func_feed_links_enabled', 'wpsea_func_wlwmanifest_enabled', 'wpsea_func_rsd_enabled', 'wpsea_func_analytics_enabled', 'wpsea_func_analytics_id', 'wpsea_func_noframes_enabled', 'wpsea_func_setting_jquery_enabled', 'wpsea_func_contact_sendto', 'wpsea_func_load_jquery_enabled');

