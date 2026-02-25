-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcmd_hide_when_auth', 'lcmd_gscvc', 'lcmd_gscvf', 'lcmd_gau', 'lcmd_gtm', 'lcmd_gad', 'lcmd_bc', 'lcmd_bcf', 'lcmd_cf7ga', 'lcmd_general', 'lcmd_gsvc');
DELETE FROM wp_options WHERE option_name LIKE '%_name';

