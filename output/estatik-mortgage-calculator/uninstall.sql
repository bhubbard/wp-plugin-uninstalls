-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('estatik_calculator_settings', 'estatik_calculator_settings_migrated', 'emc_options');

