-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awpp-option', 'awpp-settings', 'awpp_serverpush_files');

