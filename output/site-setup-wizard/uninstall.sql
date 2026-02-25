-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nsd_ssw_plugins_categories', 'nsd_ssw_plugins_list', 'nsd_ssw_themes_categories', 'nsd_ssw_themes_list', 'nsd_ssw_config_options');

