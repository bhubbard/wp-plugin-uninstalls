-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-resizely-version', 'wp-resizely', 'ud::customer_key', 'ud::site_uid', 'wpp::splash::new_installation', 'wpp::splash::upgrade');
DELETE FROM wp_options WHERE option_name LIKE '%_log';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featured');
DELETE FROM wp_usermeta WHERE meta_key IN ('featured');
DELETE FROM wp_termmeta WHERE meta_key IN ('featured');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featured');

