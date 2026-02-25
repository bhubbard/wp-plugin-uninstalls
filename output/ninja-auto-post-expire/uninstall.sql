-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('njtape_post_expire_option');
DELETE FROM wp_options WHERE option_name LIKE '%_expire_option';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_njtape_expiration_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_njtape_expiration_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_njtape_expiration_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_njtape_expiration_date');

