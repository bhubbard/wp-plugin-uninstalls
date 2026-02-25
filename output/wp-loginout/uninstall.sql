-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nab_menu_location', 'nab_ll_before', 'nab_ll_after');

