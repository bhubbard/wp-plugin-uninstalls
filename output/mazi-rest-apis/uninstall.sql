-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%installed';
DELETE FROM wp_options WHERE option_name LIKE '%version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'wp_user_level', 'description', 'locale');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'wp_user_level', 'description', 'locale');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'wp_user_level', 'description', 'locale');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'wp_user_level', 'description', 'locale');

