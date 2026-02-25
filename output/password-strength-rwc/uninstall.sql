-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bzwps_min_password_length', 'bzwps_min_numeric_chars', 'bzwps_min_special_chars');

