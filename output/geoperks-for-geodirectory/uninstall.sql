-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_perks_settings', 'exup_keys', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_license_active';

