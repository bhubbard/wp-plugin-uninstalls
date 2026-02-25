-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('max_bricks_elements', 'mab_elements_settings', 'mab_override_ms', 'mab_multisite_settings_migrated');

