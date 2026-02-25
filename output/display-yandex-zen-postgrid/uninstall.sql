-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yg_option_name', 'yg_option_name2', 'yg_option_name3');

