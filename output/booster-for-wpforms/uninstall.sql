-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bfwpf_licenses', 'wpforms_settings', 'update_plugins');

