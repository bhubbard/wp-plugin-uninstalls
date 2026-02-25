-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_wrapper_file', 'bbpress-wp-tweaks');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login');

