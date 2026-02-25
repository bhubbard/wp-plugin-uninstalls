-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcs_addstyledrop', 'tcs_locstyle', 'tcs_cuslink', 'tcs_submenu', 'tcs_nomerge');

