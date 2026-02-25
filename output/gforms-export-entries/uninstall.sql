-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gfee_settings', 'gfee_old_settings', 'gfee_has_updated_1_7_3', 'gfee_settings_old');

