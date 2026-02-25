-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%global_code';
DELETE FROM wp_options WHERE option_name LIKE '%global_code_sdk_i';
DELETE FROM wp_options WHERE option_name LIKE '%global_method';

