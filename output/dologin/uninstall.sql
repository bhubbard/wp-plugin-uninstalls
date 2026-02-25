-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dologin_test', 'dologin_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'dologin.%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', '2fa');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', '2fa');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', '2fa');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', '2fa');

