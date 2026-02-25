-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mved_pluginPage', 'mvedASelect', 'mvedCSelect', 'mved_settings');

