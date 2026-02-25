-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seatreg_db_current_version', 'seatreg_trigger_side_effect');

