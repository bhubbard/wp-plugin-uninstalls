-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('new_Api_key', 'plzsharemeShortUrlApiUrl', 'TwitterTag', 'GoogleTag', 'PinterestTag', 'FacebookTag', 'plzshareme_plugin_do_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'plzsharemeShortURL%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plzsharemeShortURL');
DELETE FROM wp_usermeta WHERE meta_key IN ('plzsharemeShortURL');
DELETE FROM wp_termmeta WHERE meta_key IN ('plzsharemeShortURL');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plzsharemeShortURL');

