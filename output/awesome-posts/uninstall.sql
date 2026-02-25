-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('arifix_ap_db_version', 'arifix_ap_grid_settings');

