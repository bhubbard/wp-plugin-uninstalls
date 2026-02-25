-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_Api_key', 'plinkShortUrlApiUrl', 'plink_plugin_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'plinkShortURL%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plinkShortURL');
DELETE FROM wp_usermeta WHERE meta_key IN ('plinkShortURL');
DELETE FROM wp_termmeta WHERE meta_key IN ('plinkShortURL');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plinkShortURL');

