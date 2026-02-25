-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('booter_settings', 'booter_version', 'wpseo_xml', 'wpseo', 'aioseop_options', 'booter_disavow_list_downloaded_at', 'booter_bad_referers', 'booter_bad_robots', 'booter_bad_referers_updated_at', 'booter_bad_robots_updated_at', 'upress_enable');

