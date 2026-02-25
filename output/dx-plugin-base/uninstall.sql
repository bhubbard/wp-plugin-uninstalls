-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dx_option_from_ajax', 'dx_setting');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dx_test_input');
DELETE FROM wp_usermeta WHERE meta_key IN ('dx_test_input');
DELETE FROM wp_termmeta WHERE meta_key IN ('dx_test_input');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dx_test_input');

