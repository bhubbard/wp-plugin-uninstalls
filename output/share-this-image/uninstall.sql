-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sti_settings', 'sti_plugin_ver', 'active_sitewide_plugins');

