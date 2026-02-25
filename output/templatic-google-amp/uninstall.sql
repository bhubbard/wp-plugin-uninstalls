-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tmpl_amp_settings', 'tmpl_amp_plugin_active', 'twentyfourteen_category_count');

