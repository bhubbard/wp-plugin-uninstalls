-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pvc_last_checked');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_post_view_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_post_view_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_post_view_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_post_view_count');

