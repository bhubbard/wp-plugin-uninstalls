-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('slcb_plugin_state', 'slcb_intensity_level', 'slcb_version_name');

