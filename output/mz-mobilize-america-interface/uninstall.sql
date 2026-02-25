-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mz_mobilize_america_settings', 'mz_mobilize_america');

