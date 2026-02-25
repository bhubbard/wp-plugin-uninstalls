-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vloops_wp_plugin_options', 'vl_script', 'vl_campaigns');

