-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%InputField1';
DELETE FROM wp_options WHERE option_name LIKE '%InputField2';
DELETE FROM wp_options WHERE option_name LIKE '%InputField3';
DELETE FROM wp_options WHERE option_name LIKE '%InputField4';

