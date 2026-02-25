-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dable-settings', 'dable-target-post-types', 'dable-og-settings', 'dable-widget-settings', 'dable_plugin_version');

