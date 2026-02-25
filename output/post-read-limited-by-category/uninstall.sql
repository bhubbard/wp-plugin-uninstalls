-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('prc_cat', 'prc_limited', 'prc_role');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_read_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_read_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_read_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_read_count');

