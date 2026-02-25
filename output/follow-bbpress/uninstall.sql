-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bbpf_field');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bbpress_followers', 'bbpress_following');
DELETE FROM wp_usermeta WHERE meta_key IN ('bbpress_followers', 'bbpress_following');
DELETE FROM wp_termmeta WHERE meta_key IN ('bbpress_followers', 'bbpress_following');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bbpress_followers', 'bbpress_following');

