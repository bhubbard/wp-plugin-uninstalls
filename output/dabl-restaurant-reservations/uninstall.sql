-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dabl_rr_dbv', 'dabl_rr_show_setup_notice');

