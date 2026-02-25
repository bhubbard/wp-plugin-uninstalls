-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_simple_post_view_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('post_view', 'is_post_view');
DELETE FROM wp_usermeta WHERE meta_key IN ('post_view', 'is_post_view');
DELETE FROM wp_termmeta WHERE meta_key IN ('post_view', 'is_post_view');
DELETE FROM wp_commentmeta WHERE meta_key IN ('post_view', 'is_post_view');

