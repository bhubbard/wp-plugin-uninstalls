-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epda_version', 'epda_version_first', 'epda_config', '_epda_plugin_activated');

