-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('abfc_top', 'abfc_left', 'abfc_top2', 'abfc_left2');

