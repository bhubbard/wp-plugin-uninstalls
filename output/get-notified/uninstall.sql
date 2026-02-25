-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gnt_hook_settings', 'gnt_integration_settings', 'gnt_settings');

