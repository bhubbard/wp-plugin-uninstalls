-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_env';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_test_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_payment_method');

