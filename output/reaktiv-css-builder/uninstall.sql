-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reaktiv-custom-css', 'rkvcss_check_protection_files');

