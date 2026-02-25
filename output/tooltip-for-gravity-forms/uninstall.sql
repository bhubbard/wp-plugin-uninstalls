-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tooltip_plugin_version', 'gravity_tooltip_options', 'tooltip_update_checker', 'gravitychecker');

